use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
use Config;

WriteMakefile(
    NAME              => 'nvidia2::ml::bindings',
    VERSION_FROM      => 'lib/nvidia2/ml.pm',
    ABSTRACT_FROM     => 'lib/nvidia2/ml.pm',
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    LIBS              => ['-lnvidia-ml'], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
    OBJECT            => '$(O_FILES)', # link all the C files too
);

