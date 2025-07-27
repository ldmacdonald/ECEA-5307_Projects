
##############################################################
#
# VENDING-MACHINE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
VENDING_MACHINE_VERSION = '7d7e1fe77fb95cd3bd25ae4ad5921c2f56088082'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
VENDING_MACHINE_SITE = 'git@github.com:ldmacdonald/ECEA-5307-Vending_Machine.git'
VENDING_MACHINE_SITE_METHOD = git
VENDING_MACHINE_GIT_SUBMODULES = YES

define VENDING_MACHINE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/ all
endef

# TODO add vending machine install code
#define VENDING_MACHINE_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/
#	$(INSTALL) -m 0775 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
#endef

$(eval $(generic-package))