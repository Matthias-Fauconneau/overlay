# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CMAKE_MAKEFILE_GENERATOR="emake"
FORTRAN_NEEDED=fortran
FORTRAN_STANDARD="77 90"
# if FFLAGS and FCFLAGS are set then should be equal

inherit cmake fortran-2 toolchain-funcs git-r3

DESCRIPTION="Suite of nonlinear solvers"
HOMEPAGE="https://computation.llnl.gov/projects/sundials"
EGIT_REPO_URI="https://github.com/LLNL/${PN}"

LICENSE="BSD"
SLOT="0/$(ver_cut 1)"
KEYWORDS=""
IUSE="cxx doc examples fortran hypre lapack mpi openmp sparse static-libs superlumt threads cuda hip sycl raja"
REQUIRED_USE="hypre? ( mpi )"

BDEPEND="virtual/pkgconfig"
RDEPEND="
	lapack? ( virtual/lapack )
	mpi? ( virtual/mpi sci-libs/hypre:= )
	sparse? ( sci-libs/klu )
	superlumt? ( sci-libs/superlu_mt:= )
"
DEPEND="${RDEPEND}"

pkg_setup() {
	if [[ ${MERGE_TYPE} != binary ]] && use openmp && [[ $(tc-getCC) == *gcc ]] && ! tc-has-openmp; then
		ewarn "OpenMP is not available in your current selected gcc"
		die "need openmp capable gcc"
	fi
}

src_configure() {
	mycmakeargs+=(
		-DBUILD_SHARED_LIBS=ON
		-DBUILD_STATIC_LIBS="$(usex static-libs)"
		-DCXX_ENABLE="$(usex cxx)"
		-DFCMIX_ENABLE="$(usex fortran)"
		-DF90_ENABLE="$(usex fortran)"
    -DENABLE_HYPRE="$(usex hypre)"
    -DHYPRE_INCLUDE_DIR="${EPREFIX}/usr/include/hypre"
    -DENABLE_KLU="$(usex sparse)"
    -DENABLE_LAPACK="$(usex lapack)"
    -DENABLE_MPI="$(usex mpi)"
    -DENABLE_OPENMP="$(usex openmp)"
    -DENABLE_PTHREAD="$(usex threads)"
    -DENABLE_CUDA="$(usex cuda)"
    -DENABLE_HIP="$(usex hip)"
    -DENABLE_RAJA="$(usex raja)"
    -DENABLE_SYCL="$(usex sycl)"
    -DENABLE_SUPERLUMT="$(usex superlumt)"
		-DSUPERLUMT_INCLUDE_DIR="${EPREFIX}/usr/include/superlu_mt"
		-DSUPERLUMT_LIBRARY="-lsuperlu_mt"
		-DEXAMPLES_ENABLE="$(usex examples)"
		-DEXAMPLES_INSTALL=ON
		-DEXAMPLES_INSTALL_PATH="/usr/share/doc/${PF}/examples"
		-DUSE_GENERIC_MATH=ON
	)
	use sparse && mycmakeargs+=( -DKLU_LIBRARY="${EPREFIX}/usr/$(get_libdir)/libklu.so" )
	cmake_src_configure
}

src_install() {
	cmake_src_install
	use doc && dodoc doc/*/*.pdf
}
