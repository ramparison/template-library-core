# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Marco Emilio Poleggi <Marco.Poleggi@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # rproxy, 13.1.2, 1, 20131015-1106
      #

unique template components/rproxy/config-common;

include { 'components/rproxy/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/rproxy';

#'version' = '13.1.2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
