# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Joao Martins <alasdair.earl@cern.ch>
#

# 
# #
# iptables, 15.4.0-rc9, rc9_1, 2015-06-01T17:38:44Z
#

unique template components/iptables/config-common;

include { 'components/iptables/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/iptables';

#'version' = '15.4.0-rc9';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
