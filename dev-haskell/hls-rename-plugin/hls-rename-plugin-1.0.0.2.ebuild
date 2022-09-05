# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Not working for some reason

DESCRIPTION="Rename plugin for Haskell Language Server"
HOMEPAGE="https://hackage.haskell.org/package/hls-rename-plugin"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/extra:=[profile?]
	dev-haskell/ghc-exactprint:=[profile?]
	>=dev-haskell/ghcide-1.6:=[profile?] <dev-haskell/ghcide-1.8:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/hiedb:=[profile?]
	>=dev-haskell/hls-plugin-api-1.3:=[profile?] <dev-haskell/hls-plugin-api-1.5:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/lsp-types:=[profile?]
	dev-haskell/mod:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"
#	test? (
#		dev-haskell/aeson
#		dev-haskell/hls-plugin-api
#		>=dev-haskell/hls-test-utils-1.3 <dev-haskell/hls-test-utils-1.4
#	)