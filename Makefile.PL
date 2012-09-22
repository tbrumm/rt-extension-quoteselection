use inc::Module::Install;


RTx 'RT-Extension-QuoteSelection';
all_from 'lib/RT/Extension/QuoteSelection.pm';
readme_from 'lib/RT/Extension/QuoteSelection.pm';
license  'gplv2';

requires_rt('4.0.0');

sign;
WriteAll;
