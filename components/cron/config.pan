# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# 
# #
# cron, 16.8.0, 1, Thu Sep 15 2016
#

unique template components/cron/config;

include { 'components/cron/config-common' };
include { 'components/cron/config-rpm' };
