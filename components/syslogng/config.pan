# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 
# #
# syslogng, 16.8.0, 1, Thu Sep 15 2016
#

unique template components/syslogng/config;

include { 'components/syslogng/config-common' };
include { 'components/syslogng/config-rpm' };
