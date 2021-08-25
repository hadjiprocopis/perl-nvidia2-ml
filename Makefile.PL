use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
use Config;
use File::Spec;

my %vars;
my ($CUDA_PATH, $CUDA_LIBS_PATH, $CUDA_INC_PATH, $CUDA_NVML_LINK);
for my $aenv (qw/CUDA_PATH CUDA_HOME/){
	if( exists($ENV{$aenv}) && defined($ENV{$aenv}) ){
		if( -d $ENV{$aenv} ){
			$vars{'CUDA_PATH'} = $ENV{$aenv};
			last;
		} else { print STDERR "$0 : error, '$aenv' environment variable does not point to a valid directory (it must be the installation BASE dir for all CUDA SDK package)): '".$ENV{$aenv}."'. Can not continue.\n"; exit(1); }
	}
}
for my $aenv (qw/CUDA_NVML_LINK/){
	if( exists($ENV{$aenv}) && defined($ENV{$aenv}) ){
		$vars{$aenv} = $ENV{$aenv};
	}
}
for my $aenv (qw/CUDA_LIBS_PATH CUDA_INC_PATH/){
	if( exists($ENV{$aenv}) && defined($ENV{$aenv}) ){
		if( -f $ENV{$aenv} ){
			$vars{$aenv} = $ENV{$aenv};
		} else { print STDERR "$0 : error, '$aenv' environment variable does not point to a valid directory: '".$ENV{$aenv}."'. Can not continue.\n"; exit(1); }
	}
}
if( exists($vars{'CUDA_NVML_LINK'}) && defined($vars{'CUDA_NVML_LINK'}) ){
	$vars{'CUDA_NVML_LINK'} = '-l'.$vars{'CUDA_NVML_LINK'};
} else {
	if( $^O eq 'MSWin32' ){ $vars{'CUDA_NVML_LINK'} = '-lnvml' }
	elsif( $^O eq 'linux' ){ $vars{'CUDA_NVML_LINK'} = '-lnvidia-ml' }
	elsif( $^O eq 'darwin' ){ $vars{'CUDA_NVML_LINK'} = '-lnvidia-ml' }
}

my @libs;
my @incs = qw/-I./;
if( exists($vars{'CUDA_PATH'}) && defined($vars{'CUDA_PATH'}) ){
	if( $^O eq 'MSWin32' ){
		push @libs, '-L"'.(exists($vars{'CUDA_LIBS_PATH'})?$vars{'CUDA_LIBS_PATH'}:File::Spec->catdir($vars{'CUDA_PATH'}, 'Win32')).'"';
		push @incs, '-I"'.(exists($vars{'CUDA_INC_PATH'})?$vars{'CUDA_INC_PATH'}:File::Spec->catdir($vars{'CUDA_PATH'}, 'include')).'"';
	} elsif( $^O eq 'linux' ){
		push @libs, '-L"'.(exists($vars{'CUDA_LIBS_PATH'})?$vars{'CUDA_LIBS_PATH'}:File::Spec->catdir($vars{'CUDA_PATH'}, 'lib')).'"';
		push @incs, '-I"'.(exists($vars{'CUDA_INC_PATH'})?$vars{'CUDA_INC_PATH'}:File::Spec->catdir($vars{'CUDA_PATH'}, 'include')).'"';
	} elsif( $^O eq 'darwin' ){
		push @libs, '-L"'.(exists($vars{'CUDA_LIBS_PATH'})?$vars{'CUDA_LIBS_PATH'}:File::Spec->catdir($vars{'CUDA_PATH'}, 'lib')).'"';
		push @incs, '-I"'.(exists($vars{'CUDA_INC_PATH'})?$vars{'CUDA_INC_PATH'}:File::Spec->catdir($vars{'CUDA_PATH'}, 'include')).'"';
	} else {
		push @libs, '-L"'.(exists($vars{'CUDA_LIBS_PATH'})?$vars{'CUDA_LIBS_PATH'}:File::Spec->catdir($vars{'CUDA_PATH'}, 'lib')).'"';
		push @incs, '-I"'.(exists($vars{'CUDA_INC_PATH'})?$vars{'CUDA_INC_PATH'}:File::Spec->catdir($vars{'CUDA_PATH'}, 'include')).'"';
	}
}
push @libs, $vars{'CUDA_NVML_LINK'};
print "$0 : using LIB: @libs\n";
print "$0 : using INC: @incs\n";

my %mkparams = (
    NAME              => 'nvidia2::ml::bindings',
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    OBJECT            => '$(O_FILES)', # link all the C files too
# BLIAKO: addition
    PREREQ_PM         => {
	'File::Spec' => 1.0,
	'File::Find' => 1.0,
    },
    INC               => join(' ', @incs),
    LIBS	      => join(' ', @libs),
    dist	      => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    VERSION_FROM      => 'lib/nvidia2/ml.pm',
    ABSTRACT          => 'Perl bindings to NVML, the NVIDIA Management Library - this is a 2021 version taken over by BLIAKO heavily based on original nvidia::ml CPAN package',
# BLIAKO: end addition
);

WriteMakefile(%mkparams);

# BLIAKO: addition
package MY;
sub libscan {
    my( $mm, $file ) = @_;
    return if $file =~ /(push_to_GIT)|(\.lock)/;
    #warn "scanning '$file' ...\n";
    return $file;
}
# BLIAKO: end addition
