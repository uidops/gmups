# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Jalali calendar library"
HOMEPAGE="http://nongnu.org/jcal"
EGIT_REPO_URI="git://git.sv.gnu.org/jcal.git"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}/${P/_}/sources

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
