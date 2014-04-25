SPK_NAME = chromaprint
SPK_VERS = 1.1
SPK_REV = 1
#SPK_ICON = src/ffmpeg.png
DSM_UI_DIR = app
CHANGELOG = initial version

DEPENDS = cross/$(SPK_NAME)

MAINTAINER = lalinsky
DESCRIPTION = Chromaprint is the core component of the AcoustID project. It is a client-side library that implements a custom algorithm for extracting fingerprints from any audio source.
RELOAD_UI = yes
DISPLAY_NAME = chromaprint

HOMEPAGE = http://acoustid.org/chromaprint
LICENSE  = LGPL2.1+

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh
ADDITIONAL_SCRIPTS =

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

PLIST_TRANSFORM = grep -E '(chromaprint|fpcalc)'


include ../../mk/spksrc.spk.mk
