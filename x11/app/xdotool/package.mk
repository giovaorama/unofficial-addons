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

PKG_NAME="xdotool"
PKG_VERSION="2.20110530.1"
PKG_REV="1"
PKG_ARCH=""
PKG_LICENSE="GPL"
PKG_SITE="http://www.semicomplete.com/projects/xdotool/"
PKG_URL="http://semicomplete.googlecode.com/files/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET=""
PKG_BUILD_DEPENDS_TARGET="toolchain libXtst libXinerama"
PKG_PRIORITY="optional"
PKG_SECTION="x11/app"
PKG_SHORTDESC="This tool lets you simulate keyboard input and mouse activity, move and resize windows, etc.."
PKG_LONGDESC="This tool lets you simulate keyboard input and mouse activity, move and resize windows, etc.."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAINTAINER="vpeter4 (peter.vicman@gmail.com)"

make_target() {
  make xdotool.static
  mv xdotool.static xdotool
}

makeinstall_target() {
  : # nothing to do here
}
