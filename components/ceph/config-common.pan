# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Kenneth Waegeman <Kenneth.Waegeman@UGent.be>
#

# 
# #
# ceph, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/ceph/config-common;

include { 'components/ceph/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ceph';

'version' = '16.2.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
