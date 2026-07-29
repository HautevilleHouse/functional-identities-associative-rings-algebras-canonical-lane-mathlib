import FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean.AdmissibleClass

/-!
# Functional Identity Lattice Package
-/

namespace HautevilleHouse
namespace FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean

structure FunctionalIdentityLatticePackage {R : Type u} [Ring R] where
  baseRing : Type u
  partialOrders : List (R → R → Prop)
  latticeOperationsDefined : Prop
  joinPreservesIdentities : Prop
  meetPreservesIdentities : Prop

structure FunctionalIdentityLatticeEvidence {R : Type u} [Ring R]
    (L : FunctionalIdentityLatticePackage R) where
  latticeOperationsDefinedClosed : L.latticeOperationsDefined
  joinPreservesIdentitiesClosed : L.joinPreservesIdentities
  meetPreservesIdentitiesClosed : L.meetPreservesIdentities

def FunctionalIdentityLatticeClosed {R : Type u} [Ring R]
    (L : FunctionalIdentityLatticePackage R) : Prop :=
  L.latticeOperationsDefined ∧ L.joinPreservesIdentities ∧ L.meetPreservesIdentities

theorem functional_identity_lattice_closed_from_evidence
    {R : Type u} [Ring R] (L : FunctionalIdentityLatticePackage R)
    (E : FunctionalIdentityLatticeEvidence L) : FunctionalIdentityLatticeClosed L := by
  exact And.intro E.latticeOperationsDefinedClosed
    (And.intro E.joinPreservesIdentitiesClosed E.meetPreservesIdentitiesClosed)

end FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean
end HautevilleHouse