# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="BiCon - The Bidirectional Console"
HOMEPAGE="https://github.com/behdad/bicon"
COMMIT="0364c0e025cc18f424238211056a7be77ee2a52c"
SRC_URI="https://github.com/behdad/bicon/archive/${COMMIT}.zip -> ${P}.zip"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=dev-libs/fribidi-0.10.4"
RDEPEND=""

S="${WORKDIR}/${PN}-${COMMIT}"

src_configure() {
	./autogen.sh
}

src_compile() {
	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
