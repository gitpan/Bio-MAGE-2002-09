use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Bio::MAGE',
    'ABSTRACT'		=> 'Classes for MAGE-OM',
    'VERSION'            => '2002-09-02_0',
    'PREREQ_PM'		=> {Tie::IxHash=>1.21}, # e.g., Module::Name => 1.1
    'AUTHOR'		=> 'Jason E. Stewart <jason@openinformatics.com>',
);

