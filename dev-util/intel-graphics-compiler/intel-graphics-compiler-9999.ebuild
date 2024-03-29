# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CMAKE_ECLASS=cmake
PYTHON_COMPAT=( python{3_9,3_10} )
LLVM_MAX_SLOT=11

inherit cmake flag-o-matic llvm python-any-r1 git-r3

DESCRIPTION="LLVM-based OpenCL compiler targetting Intel Gen graphics hardware"
HOMEPAGE="https://github.com/intel/intel-graphics-compiler"
EGIT_REPO_URI="https://github.com/intel/${PN}"
#S="${WORKDIR}"/${PN}-igc-${PV}

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="debug"

BDEPEND="
	${PYTHON_DEPS}
	>=sys-devel/lld-${LLVM_MAX_SLOT}
"

# Yes, the last dependency does effectively force the use of llvm-10
# - there are currently no SLOT=9 ebuilds of opencl-clang with mem2reg
# support. Of course with there being no SLOT=9 ebuilds of vc-intrinsics
# (which we'll need soon as well) at all either we are limited to llvm-10 anyway.
DEPEND="
	<=sys-devel/llvm-${LLVM_MAX_SLOT}.9999:=
	<=dev-libs/opencl-clang-${LLVM_MAX_SLOT}.9999:=
"

RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}/${PN}-1.0.9-no_Werror.patch"
	"${FILESDIR}/${PN}-1.0.8173-opencl-clang_version.patch"
)

find_best_llvm_slot() {
	local candidate_slot

	# Select the same slot as the best opencl-clang
	local ocl_clang_ver="dev-libs/opencl-clang-11.1.0_pre20201222" #"$(best_version -d <=dev-libs/opencl-clang-${LLVM_MAX_SLOT}.9999:=)"
	einfo "Selecting ${ocl_clang_ver}"
	candidate_slot=$(ver_cut 5 ${ocl_clang_ver})

	# Sanity check - opencl-clang brings the right LLVM slot as its
	# dependency so if this is missing, something is very wrong.
	has_version -d sys-devel/llvm:${candidate_slot} || die "LLVM slot matching ${ocl_clang_ver} not found (${candidate_slot})"

	echo ${candidate_slot}
}

src_configure() {
	local llvm_slot=$(find_best_llvm_slot)
	einfo "Selecting LLVM slot ${llvm_slot}: $(best_version -d sys-devel/llvm:${llvm_slot})"
	local llvm_prefix=$(get_llvm_prefix ${llvm_slot})
	local llvm_ver=$(best_version -d sys-devel/llvm:${llvm_slot})
	llvm_ver=${llvm_ver##*-}

	# Since late March 2020 cmake.eclass does not set -DNDEBUG any more, and the way
	# IGC uses this definition causes problems for some users (see Bug #718824).
	use debug || append-cppflags -DNDEBUG

	# VectorCompiler needs work, at the moment upstream only supports building vc-intrinsics in place.
	local mycmakeargs=(
		-DCCLANG_SONAME_VERSION=${llvm_slot}
		-DCMAKE_LIBRARY_PATH="${llvm_prefix}"/$(get_libdir)
		-DIGC_OPTION__FORCE_SYSTEM_LLVM=ON
		-DIGC_OPTION__LLVM_PREFERRED_VERSION=${llvm_ver}
		-DIGC_BUILD__VC_ENABLED=no
	)

	cmake_src_configure
}
