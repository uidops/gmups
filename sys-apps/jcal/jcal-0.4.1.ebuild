# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Jalali calendar library"
HOMEPAGE="http://nongnu.org/jcal"
SRC_URI="http://download.savannah.gnu.org/releases/jcal/${P/_}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}/${P/_}

src_prepare() {
	default_src_prepare
	./autogen.sh -a
}

src_configure() {
	econf
}

src_compile() {
	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
