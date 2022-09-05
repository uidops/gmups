# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -ghc-lib,+hlint33,-pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

# hololeap (2022-02-19)
# A single test fails -- this requires more investigation
#RESTRICT="test"

DESCRIPTION="Hlint integration plugin with Haskell Language Server"
HOMEPAGE="https://hackage.haskell.org/package/hls-hlint-plugin"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	>=dev-haskell/apply-refact-0.9.3.0:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-haskell/ghc-exactprint-0.6.3.4:=[profile?]
	>=dev-haskell/ghc-lib-9.0:=[profile?] <dev-haskell/ghc-lib-9.1:=[profile?]
	>=dev-haskell/ghc-lib-parser-ex-9.0:=[profile?] <dev-haskell/ghc-lib-parser-ex-9.1:=[profile?]
	>=dev-haskell/ghcide-1.7:=[profile?] <dev-haskell/ghcide-1.8:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/hlint-3.3:=[profile?] <dev-haskell/hlint-3.4:=[profile?]
	>=dev-haskell/hls-plugin-api-1.4:=[profile?] <dev-haskell/hls-plugin-api-1.5:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/refact:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/hls-test-utils-1.3 <dev-haskell/hls-test-utils-1.4
		dev-haskell/lsp-types
	)
"

pkg_pretend() {
	use test && ewarn "Tests use a very large amount of RAM when run! (>7GB)"
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-ghc-lib \
		--flag=hlint33 \
		--flag=-pedantic
}
