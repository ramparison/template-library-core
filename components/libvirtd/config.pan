# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Centre National de la Recherche Scientifique
#

# #
# Current developer(s):
#   Charles LOOMIS <loomis@lal.in2p3.fr>
#

# 
# #
# libvirtd, 15.4.0-rc9, rc9_1, 2015-06-01T17:38:44Z
#

unique template components/libvirtd/config;

include {'components/libvirtd/schema'};

'/software/packages'=pkg_repl('ncm-libvirtd','15.4.0-rc9_1','noarch');
'/software/components/libvirtd/dependencies/pre' ?=  list ('spma');

'/software/components/libvirtd/active' ?= true;
'/software/components/libvirtd/dispatch' ?= true;
