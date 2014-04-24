#!/bin/sh

# Package
PACKAGE="chromaprint"

FPCALC_TARGET="/usr/bin/fpcalc"
# Others
INSTALL_DIR="/usr/local/${PACKAGE}"



preinst ()
{
    exit 0
}

postinst ()
{
    # Link
    ln -s ${SYNOPKG_PKGDEST} ${INSTALL_DIR}
    if [ ! -e "$FPCALC_TARGET" ]; then
            ln -s ${INSTALL_DIR}/bin/fpcalc ${FPCALC_TARGET}
    fi
    exit 0
}

preuninst ()
{
    rm -f ${FPCALC_TARGET}
    exit 0
}

postuninst ()
{
    # Remove link
    rm -f ${INSTALL_DIR}

    exit 0
}

preupgrade ()
{
    exit 0
}

postupgrade ()
{
    exit 0
}

