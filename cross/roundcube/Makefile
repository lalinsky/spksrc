PKG_NAME = roundcube
PKG_FILENAME = $(PKG_NAME)mail
PKG_VERS = 1.0.0
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_FILENAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://downloads.sourceforge.net/project/roundcubemail/roundcubemail/$(PKG_VERS)
PKG_DIR = $(PKG_FILENAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = http://www.roundcube.net/
COMMENT  = Roundcube is a free and open source webmail solution with a desktop-like user interface which is easy to install/configure and that runs on a standard LAMPP server. It is the same software Synology offers as Mail Station except this does not depend on Mail Server package.
LICENSE  = GPLv3

EXTRACT_PATH = $(WORK_DIR)
CONFIGURE_TARGET = nop
COMPILE_TARGET = nop
INSTALL_TARGET = myInstall

include ../../mk/spksrc.cross-cc.mk

.PHONY: myInstall
myInstall:
	mkdir -p $(STAGING_INSTALL_PREFIX)/share/roundcube
	tar -cf - -C $(WORK_DIR)/$(PKG_DIR) . | tar -xf - -C $(STAGING_INSTALL_PREFIX)/share/roundcube
