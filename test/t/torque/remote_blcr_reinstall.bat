#!/usr/bin/perl 

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../../lib/";


use CRI::Test;

plan('no_plan');
setDesc("Remote Reinstall TORQUE with BLCR");

my $testbase = "$FindBin::Bin/../";


execute_tests(
               "${testbase}torque/update_source.t",
               "${testbase}blcr/reinstall.bat",
               "${testbase}torque/uninstall/uninstall.bat",
               "${testbase}torque/install/remote_install.bat",
             );