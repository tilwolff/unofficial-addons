################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="w_scan"
PKG_VERSION="20141122"
PKG_REV="0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://wirbel.htpc-forum.de/w_scan/index2.html"
PKG_URL="http://wirbel.htpc-forum.de/w_scan/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="lib/multimedia"
PKG_SHORTDESC="w_scan: eine kleine Anwendung zum Scannen von ATSC/DVB-C/S/T Transpondern/Bouquets nach Sendern und Erstellen einer VDR channels.conf."
PKG_LONGDESC="w_scan ist eine kleine Anwendung zum Scannen von ATSC/DVB-C/S/T Transpondern/Bouquets nach Sendern und Erstellen einer VDR channels.conf."
PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_ADDON_PROVIDES=""
PKG_ADDON_REPOVERSION="6.0"
PKG_AUTORECONF="yes"

PKG_MAINTAINER="unofficial.addon.pro"

makeinstall_target() {
  : # nop
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
  cp $PKG_BUILD/.$TARGET_NAME/w_scan $ADDON_BUILD/$PKG_ADDON_ID/bin
}
