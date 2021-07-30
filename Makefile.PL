use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
use Config;

WriteMakefile(
    NAME              => 'nvidia2::ml::bindings',
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    LIBS              => ['-lnvidia-ml'], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
    OBJECT            => '$(O_FILES)', # link all the C files too
# BLIAKO: addition
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    VERSION_FROM      => 'lib/nvidia2/ml.pm',
    ABSTRACT          => 'Perl bindings to NVML, the NVIDIA Management Library - this is a 2021 version taken over by BLIAKO heavily based on original nvidia::ml CPAN package',
# BLIAKO: end addition
);

# BLIAKO: addition
package MY;
sub libscan {
    my( $mm, $file ) = @_;
    return if $file =~ /(push_to_GIT)|(\.lock)/;
    warn "@_\n";
    return $file;
}
# BLIAKO: end addition
