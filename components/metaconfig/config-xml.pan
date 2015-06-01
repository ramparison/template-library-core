# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Luis Fernando Muñoz Mejías
#

# #
# metaconfig, 15.4.0-rc9, rc9_1, 2015-06-01T17:39:47Z
#

unique template components/metaconfig/config-xml;

include { 'components/metaconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/metaconfig';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/metaconfig/metaconfig.pm'); 
