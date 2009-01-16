#!/usr/bin/perl 
use CRI::Test;
plan('no_plan');
setDesc("Restart Torque");
use strict;
use warnings;

my $testbase = $props->get_property('test.base') . "torque";

execute_tests("$testbase/uninstall/shutdown.t","$testbase/install/startup.t");
