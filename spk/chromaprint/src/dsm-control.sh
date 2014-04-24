#!/bin/sh

# Package
PACKAGE="chromaprint"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}/bin/"
FPCALC_TARGET="/usr/bin/fpcalc"

start_daemon ()
{
    if [ ! -e "${FPCALC_TARGET}" ]; then
        ln -s ${INSTALL_DIR}/fpcalc ${FPCALC_TARGET}
    fi
}

stop_daemon ()
{
    rm -f ${FPCALC_TARGET}
}


case $1 in
    start)
        start_daemon
        exit 0
    ;;
    stop)
        stop_daemon
        exit 0
    ;;
    status)
    if [ -e ${FPCALC_TARGET} ]; then
        exit 0
    else
        exit 1
    fi
    ;;
    log)
        exit 0
    ;;
esac
