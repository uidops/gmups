# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit multilib-build

DESCRIPTION="Virtual to select between different udev daemon providers"

SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~ia64 ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86"
IUSE="systemd"

RDEPEND="
	!systemd? ( || (
		>=sys-apps/systemd-utils-251[udev,${MULTILIB_USEDEP}]
		sys-fs/udev[${MULTILIB_USEDEP}]
		sys-fs/libudev-zero
		>=sys-fs/eudev-3.2.9:0/0[${MULTILIB_USEDEP}]
	) )
	systemd? ( >=sys-apps/systemd-251:0/2[${MULTILIB_USEDEP}] )
"
