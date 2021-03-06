# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Library for manipulating zip archives"
HOMEPAGE="http://www.nih.at/libzip/"
SRC_URI="http://www.nih.at/libzip/${P}.tar.xz"

LICENSE="BSD"
SLOT="0/4"
KEYWORDS="alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~x86-macos"
IUSE="static-libs"

RDEPEND="sys-libs/zlib"
DEPEND="${RDEPEND}
	app-arch/xz-utils
"

DOCS=( AUTHORS NEWS.md API-CHANGES THANKS )

PATCHES=(
	"${FILESDIR}/${PN}-1.1.3-headers.patch"
)
