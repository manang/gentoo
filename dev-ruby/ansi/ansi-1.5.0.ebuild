# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby24 ruby25 ruby26 ruby27"

RUBY_FAKEGEM_TASK_TEST=""
RUBY_FAKEGEM_RECIPE_DOC="rdoc"
RUBY_FAKEGEM_EXTRADOC="DEMO.md HISTORY.md README.md"

inherit ruby-fakegem

DESCRIPTION="The Ruby ANSI project is collection of ANSI escape codes for Ruby"
HOMEPAGE="https://rubyworks.github.io/ansi/"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

# Tests cause circular dependencies with dev-ruby/qed & dev-ruby/rubytest
RESTRICT="test"
