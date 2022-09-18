# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{8..11} )
inherit python-r1

DESCRIPTION="Jalali calendar library"
HOMEPAGE="http://nongnu.org/jcal"
SRC_URI="http://download.savannah.gnu.org/releases/jcal/${P/_}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="pyjalali static-libs"

DEPEND=""
BDEPEND="sys-libs/readline"

S="${WORKDIR}"

src_prepare() {
	default_src_prepare
	./autogen.sh -a
}

src_configure() {
	econf \
		$(use pyjalali && echo "--enable-pyjalali") \
		$(use !static-libs && echo "--enable-static=no")
}

src_compile() {
	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
