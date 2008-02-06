"""
Homogenous symmetric functions
"""
#*****************************************************************************
#       Copyright (C) 2007 Mike Hansen <mhansen@gmail.com>,
#
#  Distributed under the terms of the GNU General Public License (GPL)
#
#    This code is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#    General Public License for more details.
#
#  The full text of the GPL is available at:
#
#                  http://www.gnu.org/licenses/
#*****************************************************************************

####################################
#                                  #
# Homogeneous Symmetric Functions  #
#                                  #
####################################
import multiplicative, sfa, classical

class SymmetricFunctionAlgebra_homogeneous(multiplicative.SymmetricFunctionAlgebra_multiplicative):
    def __init__(self, R):
        """
        TESTS:
            sage: h = SFAHomogeneous(QQ)
            sage: h == loads(dumps(h))
            True
        """
        classical.SymmetricFunctionAlgebra_classical.__init__(self, R, "homogeneous", SymmetricFunctionAlgebraElement_homogeneous, 'h')

    def dual_basis(self, scalar=None, prefix=None):
        """
        The dual basis of the homogeneous basis with
        respect to the standard scalar product is the
        monomial basis.

        EXAMPLES:
            sage: m = SFAMonomial(QQ)
            sage: h = SFAHomogeneous(QQ)
            sage: h.dual_basis() == m
            True
        """
        if scalar is None:
            return sfa.SFAMonomial(self.base_ring())
        else:
            return sfa.SymmetricFunctionAlgebra(self, scalar, prefix=prefix)


class SymmetricFunctionAlgebraElement_homogeneous(classical.SymmetricFunctionAlgebraElement_classical):
    def omega(self):
        """
        Returns the image of self under the Frobenius / omega automorphism.

        EXAMPLES:
            sage: h = SFAHomogeneous(QQ)
            sage: a = h([2,1]); a
            h[2, 1]
            sage: a.omega()
            h[1, 1, 1] - h[2, 1]
            sage: e = SFAElementary(QQ)
            sage: e(h([2,1]).omega())
            e[2, 1]
        """
        e = sfa.SFAElementary(self.parent().base_ring())
        return self.parent()(e._from_element(self))

    def expand(self, n, alphabet='x'):
        """
        Expands the symmetric function as a symmetric polynomial in n variables.

        EXAMPLES:
            sage: h = SFAHomogeneous(QQ)
            sage: h([3]).expand(2)
            x0^3 + x0^2*x1 + x0*x1^2 + x1^3
            sage: h([1,1,1]).expand(2)
            x0^3 + 3*x0^2*x1 + 3*x0*x1^2 + x1^3
            sage: h([2,1]).expand(3)
            x0^3 + 2*x0^2*x1 + 2*x0*x1^2 + x1^3 + 2*x0^2*x2 + 3*x0*x1*x2 + 2*x1^2*x2 + 2*x0*x2^2 + 2*x1*x2^2 + x2^3

        """
        condition = lambda part: False
        return self._expand(condition, n, alphabet)
