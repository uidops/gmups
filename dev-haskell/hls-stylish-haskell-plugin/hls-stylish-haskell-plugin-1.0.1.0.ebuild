# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Integration with the Stylish Haskell code formatter"
HOMEPAGE="https://hackage.haskell.org/package/hls-stylish-haskell-plugin"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/ghcide-1.6:=[profile?] <dev-haskell/ghcide-1.7:=[profile?]
	>=dev-haskell/hls-plugin-api-1.3:=[profile?] <dev-haskell/hls-plugin-api-1.4:=[profile?]
	dev-haskell/lsp-types:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.6.3:=
	>=dev-haskell/stylish-haskell-0.12:=[profile?] <dev-haskell/stylish-haskell-0.14:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( >=dev-haskell/hls-test-utils-1.2 <dev-haskell/hls-test-utils-1.3 )
"
