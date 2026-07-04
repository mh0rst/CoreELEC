# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="wsdd2"
PKG_VERSION="1.8.7"
PKG_SHA256="79d18e25a788cc7dcb752aa6043a75ef7f62518d3f07e9d2a0ed661ab57b93c4"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/mh0rst/wsdd2/"
PKG_URL="https://github.com/mh0rst/wsdd2/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="make:host gcc:host"
PKG_LONGDESC="WSD/LLMNR Discovery/Name Service Daemon"
PKG_BUILD_FLAGS="+size"

post_install() {
  enable_service wsdd2.service
}
