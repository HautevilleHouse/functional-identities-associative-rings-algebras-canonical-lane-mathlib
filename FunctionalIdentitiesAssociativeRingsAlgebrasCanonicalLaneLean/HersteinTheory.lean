import FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean.PrimeIdealStructure

/-!
# Herstein Theory Package
-/

namespace HautevilleHouse
namespace FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean

structure HersteinTheoryPackage {R : Type u} [Ring R]
    {L : FunctionalIdentityLatticePackage R}
    (P : PrimeIdealStructurePackage L) where
  hersteinSufficiencyCondition : Prop
  commutativityFromIdentities : Prop
  structureTheoremApplied : Prop

structure HersteinTheoryEvidence {R : Type u} [Ring R]
    {L : FunctionalIdentityLatticePackage R}
    {P : PrimeIdealStructurePackage L}
    (H : HersteinTheoryPackage P) where
  hersteinSufficiencyConditionClosed : H.hersteinSufficiencyCondition
  commutativityFromIdentitiesClosed : H.commutativityFromIdentities
  structureTheoremAppliedClosed : H.structureTheoremApplied

def HersteinTheoryClosed {R : Type u} [Ring R]
    {L : FunctionalIdentityLatticePackage R}
    {P : PrimeIdealStructurePackage L}
    (H : HersteinTheoryPackage P) : Prop :=
  H.hersteinSufficiencyCondition ∧ H.commutativityFromIdentities ∧ H.structureTheoremApplied

theorem herstein_theory_closed_from_evidence
    {R : Type u} [Ring R] {L : FunctionalIdentityLatticePackage R}
    {P : PrimeIdealStructurePackage L}
    (H : HersteinTheoryPackage P) (E : HersteinTheoryEvidence H) :
    HersteinTheoryClosed H := by
  exact And.intro E.hersteinSufficiencyConditionClosed
    (And.intro E.commutativityFromIdentitiesClosed E.structureTheoremAppliedClosed)

end FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean
end HautevilleHouse