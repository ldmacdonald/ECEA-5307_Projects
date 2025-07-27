
##############################################################
#
# HARDWARE-INTEGRATION
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
HARDWARE_INTEGRATION_VERSION = '1452b5af2a0aa879a5b3c731ebff828a68a8f30b'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
HARDWARE_INTEGRATION_SITE = 'git@github.com:ldmacdonald/ECEA-5307-Hardware_Integration.git'
HARDWARE_INTEGRATION_SITE_METHOD = git
HARDWARE_INTEGRATION_GIT_SUBMODULES = YES

#define HARDWARE_INTEGRATION_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/ all
#endef

# TODO add vending machine install code
define HARDWARE_INTEGRATION_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/ $(TARGET_DIR)/usr/bin/hardware_integration/
endef

$(eval $(generic-package))