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
# syslogng, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/syslogng/config-common;

include { 'components/syslogng/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/syslogng';

#'version' = '16.2.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
