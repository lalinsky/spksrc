SPK_NAME = fengoffice
SPK_VERS = 2.5.1.2
SPK_REV = 3
SPK_ICON = src/fengoffice.png
DSM_UI_DIR = app

DEPENDS  = cross/busybox cross/$(SPK_NAME)

MAINTAINER = SynoCommunity
DESCRIPTION = Feng Office is a Collaboration Platform and Project Management System.
ADMIN_URL = /fengoffice/
RELOAD_UI = yes
DISPLAY_NAME = Feng Office
CHANGELOG = "1. DSM 5.0 compatibility"

HOMEPAGE   = http://www.fengoffice.com/
LICENSE    = AGPL

WIZARDS_DIR = src/wizard/

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_DEP_SERVICES = apache-web mysql
START_DEP_SERVICES = apache-web mysql

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

POST_STRIP_TARGET = fengoffice_extra_install

BUSYBOX_CONFIG = daemon nice
ENV += BUSYBOX_CONFIG="$(BUSYBOX_CONFIG)"

include ../../mk/spksrc.spk.mk

.PHONY: fengoffice_extra_install
fengoffice_extra_install: 
	install -m 755 -d $(STAGING_DIR)/var
	install -m 755 src/fengoffice.sh $(STAGING_DIR)/bin/
	install -m 755 -d $(STAGING_DIR)/app
	install -m 644 src/app/config $(STAGING_DIR)/app/config
	install -m 755 -d $(STAGING_DIR)/app/images
	for size in 16 24 32 48 72; do \
		convert $(SPK_ICON) -thumbnail $${size}x$${size} \
		        $(STAGING_DIR)/app/images/$(SPK_NAME)-$${size}.png ; \
	done
