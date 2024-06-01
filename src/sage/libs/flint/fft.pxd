# distutils: libraries = flint
# distutils: depends = flint/fft.h

################################################################################
# This file is auto-generated by the script
#   SAGE_ROOT/src/sage_setup/autogen/flint_autogen.py.
# From the commit 3e2c3a3e091106a25ca9c6fba28e02f2cbcd654a
# Do not modify by hand! Fix and rerun the script instead.
################################################################################

from libc.stdio cimport FILE
from sage.libs.gmp.types cimport *
from sage.libs.mpfr.types cimport *
from sage.libs.flint.types cimport *

cdef extern from "flint_wrap.h":
    mp_size_t fft_split_limbs(mp_limb_t ** poly, mp_srcptr limbs, mp_size_t total_limbs, mp_size_t coeff_limbs, mp_size_t output_limbs) noexcept
    mp_size_t fft_split_bits(mp_limb_t ** poly, mp_srcptr limbs, mp_size_t total_limbs, flint_bitcnt_t bits, mp_size_t output_limbs) noexcept
    void fft_combine_limbs(mp_limb_t * res, mp_limb_t ** poly, slong length, mp_size_t coeff_limbs, mp_size_t output_limbs, mp_size_t total_limbs) noexcept
    void fft_combine_bits(mp_limb_t * res, mp_limb_t ** poly, slong length, flint_bitcnt_t bits, mp_size_t output_limbs, mp_size_t total_limbs) noexcept
    void fermat_to_mpz(mpz_t m, mp_limb_t * i, mp_size_t limbs) noexcept
    void mpn_negmod_2expp1(mp_limb_t * z, const mp_limb_t * a, mp_size_t limbs) noexcept
    void mpn_addmod_2expp1_1(mp_limb_t * r, mp_size_t limbs, mp_limb_signed_t c) noexcept
    void mpn_normmod_2expp1(mp_limb_t * t, mp_size_t limbs) noexcept
    void mpn_mul_2expmod_2expp1(mp_limb_t * t, mp_limb_t * i1, mp_size_t limbs, flint_bitcnt_t d) noexcept
    void mpn_div_2expmod_2expp1(mp_limb_t * t, mp_limb_t * i1, mp_size_t limbs, flint_bitcnt_t d) noexcept
    void fft_adjust(mp_limb_t * r, mp_limb_t * i1, mp_size_t i, mp_size_t limbs, flint_bitcnt_t w) noexcept
    void fft_adjust_sqrt2(mp_limb_t * r, mp_limb_t * i1, mp_size_t i, mp_size_t limbs, flint_bitcnt_t w, mp_limb_t * temp) noexcept
    void butterfly_lshB(mp_limb_t * t, mp_limb_t * u, mp_limb_t * i1, mp_limb_t * i2, mp_size_t limbs, mp_size_t x, mp_size_t y) noexcept
    void butterfly_rshB(mp_limb_t * t, mp_limb_t * u, mp_limb_t * i1, mp_limb_t * i2, mp_size_t limbs, mp_size_t x, mp_size_t y) noexcept
    void fft_butterfly(mp_limb_t * s, mp_limb_t * t, mp_limb_t * i1, mp_limb_t * i2, mp_size_t i, mp_size_t limbs, flint_bitcnt_t w) noexcept
    void ifft_butterfly(mp_limb_t * s, mp_limb_t * t, mp_limb_t * i1, mp_limb_t * i2, mp_size_t i, mp_size_t limbs, flint_bitcnt_t w) noexcept
    void fft_radix2(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2) noexcept
    void fft_truncate(mp_limb_t ** ii,  mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_size_t trunc) noexcept
    void fft_truncate1(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_size_t trunc) noexcept
    void ifft_radix2(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2) noexcept
    void ifft_truncate(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_size_t trunc) noexcept
    void ifft_truncate1(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_size_t trunc) noexcept
    void fft_butterfly_sqrt2(mp_limb_t * s, mp_limb_t * t, mp_limb_t * i1, mp_limb_t * i2, mp_size_t i, mp_size_t limbs, flint_bitcnt_t w, mp_limb_t * temp) noexcept
    void ifft_butterfly_sqrt2(mp_limb_t * s, mp_limb_t * t, mp_limb_t * i1, mp_limb_t * i2, mp_size_t i, mp_size_t limbs, flint_bitcnt_t w, mp_limb_t * temp) noexcept
    void fft_truncate_sqrt2(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp, mp_size_t trunc) noexcept
    void ifft_truncate_sqrt2(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp, mp_size_t trunc) noexcept
    void fft_butterfly_twiddle(mp_limb_t * u, mp_limb_t * v, mp_limb_t * s, mp_limb_t * t, mp_size_t limbs, flint_bitcnt_t b1, flint_bitcnt_t b2) noexcept
    void ifft_butterfly_twiddle(mp_limb_t * u, mp_limb_t * v, mp_limb_t * s, mp_limb_t * t, mp_size_t limbs, flint_bitcnt_t b1, flint_bitcnt_t b2) noexcept
    void fft_radix2_twiddle(mp_limb_t ** ii, mp_size_t iis, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_size_t ws, mp_size_t r, mp_size_t c, mp_size_t rs) noexcept
    void ifft_radix2_twiddle(mp_limb_t ** ii, mp_size_t iis, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_size_t ws, mp_size_t r, mp_size_t c, mp_size_t rs) noexcept
    void fft_truncate1_twiddle(mp_limb_t ** ii, mp_size_t iis, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_size_t ws, mp_size_t r, mp_size_t c, mp_size_t rs, mp_size_t trunc) noexcept
    void ifft_truncate1_twiddle(mp_limb_t ** ii, mp_size_t iis, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_size_t ws, mp_size_t r, mp_size_t c, mp_size_t rs, mp_size_t trunc) noexcept
    void fft_mfa_truncate_sqrt2(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp, mp_size_t n1, mp_size_t trunc) noexcept
    void ifft_mfa_truncate_sqrt2(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp, mp_size_t n1, mp_size_t trunc) noexcept
    void fft_mfa_truncate_sqrt2_outer(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp, mp_size_t n1, mp_size_t trunc) noexcept
    void fft_mfa_truncate_sqrt2_inner(mp_limb_t ** ii, mp_limb_t ** jj, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp, mp_size_t n1, mp_size_t trunc, mp_limb_t ** tt) noexcept
    void ifft_mfa_truncate_sqrt2_outer(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp, mp_size_t n1, mp_size_t trunc) noexcept
    void fft_negacyclic(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp) noexcept
    void ifft_negacyclic(mp_limb_t ** ii, mp_size_t n, flint_bitcnt_t w, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** temp) noexcept
    void fft_naive_convolution_1(mp_limb_t * r, mp_limb_t * ii, mp_limb_t * jj, mp_size_t m) noexcept
    void _fft_mulmod_2expp1(mp_limb_t * r1, mp_limb_t * i1, mp_limb_t * i2, mp_size_t r_limbs, flint_bitcnt_t depth, flint_bitcnt_t w) noexcept
    slong fft_adjust_limbs(mp_size_t limbs) noexcept
    void fft_mulmod_2expp1(mp_limb_t * r, mp_limb_t * i1, mp_limb_t * i2, mp_size_t n, mp_size_t w, mp_limb_t * tt) noexcept
    void mul_truncate_sqrt2(mp_ptr r1, mp_srcptr i1, mp_size_t n1, mp_srcptr i2, mp_size_t n2, flint_bitcnt_t depth, flint_bitcnt_t w) noexcept
    void mul_mfa_truncate_sqrt2(mp_ptr r1, mp_srcptr i1, mp_size_t n1, mp_srcptr i2, mp_size_t n2, flint_bitcnt_t depth, flint_bitcnt_t w) noexcept
    void flint_mpn_mul_fft_main(mp_ptr r1, mp_srcptr i1, mp_size_t n1, mp_srcptr i2, mp_size_t n2) noexcept
    void fft_convolution(mp_limb_t ** ii, mp_limb_t ** jj, slong depth, slong limbs, slong trunc, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** s1, mp_limb_t ** tt) noexcept
    void fft_precache(mp_limb_t ** jj, slong depth, slong limbs, slong trunc, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** s1) noexcept
    void fft_convolution_precache(mp_limb_t ** ii, mp_limb_t ** jj, slong depth, slong limbs, slong trunc, mp_limb_t ** t1, mp_limb_t ** t2, mp_limb_t ** s1, mp_limb_t ** tt) noexcept
