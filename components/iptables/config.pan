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
# iptables, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/iptables/config;

include { "components/iptables/schema" };

# Package to install.
"/software/packages" = pkg_repl("ncm-iptables", "16.2.0-rc3_1", "noarch");

prefix '/software/components/iptables';

'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = append("spma");
