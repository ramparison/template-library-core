# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
      # accounts, 13.12.0, 1, 20131210-1548
      #

unique template components/accounts/config-common;

include { 'components/accounts/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/accounts';

#'version' = '13.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;