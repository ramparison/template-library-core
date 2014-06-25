# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # named, 14.6.0-rc1, rc1_1, 20140625-1505
      #

unique template components/named/config-xml;

include { 'components/named/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/named';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/named/named.pm'); 
