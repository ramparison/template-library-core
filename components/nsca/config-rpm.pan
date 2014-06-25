# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


################################################################################
# This is 'TPL/config.tpl', a ncm-nsca's file
################################################################################
#
#
################################################################################
unique template components/nsca/config-rpm;
include {'components/nsca/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-nsca", "14.6.0-rc1_1", "noarch");

"/software/components/nsca/dependencies/pre" ?=  list ("spma", "accounts");

"/software/components/nsca/active" ?= true;
"/software/components/nsca/dispatch" ?= true;

