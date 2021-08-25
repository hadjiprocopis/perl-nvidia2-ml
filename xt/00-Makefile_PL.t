our $VERSION = 0.01;

use Config;
use File::Temp qw/tempdir/;
use File::Path qw/make_path/;
use Test::More;

my $perlcmd = $Config{'perlpath'};

ok(-x $perlcmd, "Have perl executable at '$perlcmd'") or BAIL_OUT("Can not continue.");

#my $tmpdir = tempdir( 'dir' => './tmp', CLEANUP => 0 );
my $tmpdir = tempdir( CLEANUP => 1 );
ok( -d $tmpdir, "Temp dir '$tmpdir' created.");

my (@testdirs, %dummylibs);
if( $^O eq 'MSWin32' ){
	@testdirs = ('\\blah blih\\bleh');
	$dummylibs{'libdummy.dll'} = 'dummy';
	$dummylibs{'libdummy-xyz.dll'} = 'dummy-xyz';
} elsif( $^O eq 'linux' ){
	#@testdirs = ('/blah blih/bleh');
	@testdirs = ('abc');
	$dummylibs{'libdummy.so'} = 'dummy';
	$dummylibs{'libdummy-xyz.so'} = 'dummy-xyz';
} elsif( $^O eq 'darwin' ){
	@testdirs = ('/blah blih/bleh');
	$dummylibs{'libdummy.so'} = 'dummy';
	$dummylibs{'libdummy.dylib'} = 'dummy';
	$dummylibs{'libdummy-xyz.so'} = 'dummy-xyz';
	$dummylibs{'libdummy-xyz.dylib'} = 'dummy-xyz';
} else { die "don't know how to handle '$^O' OS. Please call the author to add support for it." }

my ($contents, $FH);
for my $_adir (@testdirs){
	my $adir = File::Spec->catdir($tmpdir, $_adir);
	my $adir3;
	for my $adir2 ((($^O eq 'MSWin32') ? 'Win32':'lib'), 'include'){
		$adir3 = File::Spec->catdir($adir, $adir2);
		my @ret = make_path($adir3, {error=>\$errs});
		ok(scalar(@ret)>0, "Created dir '$adir3'.");
	}
	$_adir = $adir;
	$adir3 = File::Spec->catdir($adir, (($^O eq 'MSWin32') ? 'Win32':'lib'));
	for my $alibk (keys %dummylibs){
		my $alibname = File::Spec->catdir($adir3, $alibk);
		system("cp /usr/lib64/libm.so.6 '$alibname'");
		#ok(open($FH, '>', $alibname), "Created dummy lib '$alibname'.");
		#print $FH "dummy\n";
		#close($FH);
	}
}

my $errs;
for my $a_cuda_path (@testdirs){
	$ENV{'CUDA_PATH'} = $a_cuda_path;
	ok(1, "set ENV variable CUDA_PATH='$a_cuda_path' ...");
	for my $alib (keys %dummylibs){
		$ENV{'CUDA_NVML_LINK'} = $dummylibs{$alib}; # e.g. -lnvidia-ml
		ok(1, "set ENV variable CUDA_NVML_LINK='".$dummylibs{$alib}."' ...");
		unlink 'Makefile';
		my $CMD = "${perlcmd} Makefile.PL";
		ok(1, "executing command $CMD");
		my $ret = system($CMD);
		ok($ret==0, "system command run: $CMD") or BAIL_OUT("can not continue, command '$CMD' has failed with exit code: ".($ret>>8));
		ok(-f 'Makefile', "Makefile has been created.") or BAIL_OUT("can not continue, without Makefile.");

		ok(open($FH, '<', 'Makefile'), "Makefile opened for reading.") or BAIL_OUT("can not continue, Makefile could not be opened for reading.");
		{ local $/ = undef; $contents = <$FH>; } close($FH);
		ok( $contents =~ /^LDLOADLIBS\s*=\s*(.+?)$/m, "LDLOADLIBS located in Makefile.");
		my $LDLOADLIBS = $1;
		ok( $LDLOADLIBS =~ m!-L\s*\Q${a_cuda_path}\E!, "LDLOADLIBS contains library path ($a_cuda_path).");
		ok( $contents =~ /^EXTRALIBS\s*=\s*(.+?)$/m, "EXTRALIBS located in Makefile.");
		my $EXTRALIBS = $1;
		ok( $EXTRALIBS =~ m!-L\s*\Q${a_cuda_path}\E!, "EXTRALIBS contains library path ($a_cuda_path).");
	} # dummylibs
}
done_testing();

