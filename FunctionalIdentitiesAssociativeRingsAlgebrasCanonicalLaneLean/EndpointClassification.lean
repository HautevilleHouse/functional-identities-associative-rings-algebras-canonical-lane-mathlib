import FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean.HersteinTheory

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean

structure EndpointClassificationPackage {R : Type u} [Ring R]
    {L : FunctionalIdentityLatticePackage R}
    {P : PrimeIdealStructurePackage L}
    (H : HersteinTheoryPackage P) where
  targetRing : Type u
  ringStructure : Ring targetRing
  centralSimpleAlgebra : Prop
  functionalIdentityResolved : Prop

structure EndpointClassificationEvidence {R : Type u} [Ring R]
    {L : FunctionalIdentityLatticePackage R}
    {P : PrimeIdealStructurePackage L}
    {H : HersteinTheoryPackage P}
    (E : EndpointClassificationPackage H) where
  centralSimpleAlgebraClosed : E.centralSimpleAlgebra
  functionalIdentityResolvedClosed : E.functionalIdentityResolved

def EndpointClassificationClosed {R : Type u} [Ring R]
    {L : FunctionalIdentityLatticePackage R}
    {P : PrimeIdealStructurePackage L}
    {H : HersteinTheoryPackage P}
    (E : EndpointClassificationPackage H) : Prop :=
  E.centralSimpleAlgebra ∧ E.functionalIdentityResolved

theorem endpoint_classification_closed_from_evidence
    {R : Type u} [Ring R] {L : FunctionalIdentityLatticePackage R}
    {P : PrimeIdealStructurePackage L}
    {H : HersteinTheoryPackage P}
    (Epkg : EndpointClassificationPackage H)
    (E : EndpointClassificationEvidence Epkg) : EndpointClassificationClosed Epkg := by
  exact And.intro E.centralSimpleAlgebraClosed E.functionalIdentityResolvedClosed

end FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean
end HautevilleHouse