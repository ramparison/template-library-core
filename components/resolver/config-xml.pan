# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   njw <njw>
#

# 
# #
# resolver, 15.4.0-rc9, rc9_1, 2015-06-01T17:38:44Z
#

unique template components/resolver/config-xml;

include { 'components/resolver/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/resolver';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/resolver/resolver.pm'); 
