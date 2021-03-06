# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1
PYTHON_REQ_USE="xml"

DESCRIPTION="A set of scripts to work locally on Subversion checkouts using Mercurial"
HOMEPAGE="https://pypi.org/project/hgsvn/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~x86-linux ~x86-macos"
IUSE=""

DEPEND="
	app-arch/unzip
	dev-vcs/mercurial
"
RDEPEND="${DEPEND}
	$(python_gen_cond_dep '
		dev-vcs/subversion[${PYTHON_MULTI_USEDEP}]
	')
"

pkg_setup() {
	python-single-r1_pkg_setup
}

python_prepare_all() {
	sed -e "/use_setuptools/d" -i setup.py || die "sed failed"
	distutils-r1_python_prepare_all
}

python_install() {
	distutils-r1_python_install
	rm -rf "${D}/$(python_get_sitedir)/hgsvn/unittests" || die
}
