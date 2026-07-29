import FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean.FunctionalIdentityLattice

/-!
# Prime Ideal Structure Package
-/

namespace HautevilleHouse
namespace FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean

structure PrimeIdealStructurePackage {R : Type u} [Ring R]
    (L : FunctionalIdentityLatticePackage R) where
  primeIdealsClassified : Prop
  primeAvoidancePrinciple : Prop
  functionalIdentitiesInPrimeFactors : Prop

structure PrimeIdealStructureEvidence {R : Type u} [Ring R]
    {L : FunctionalIdentityLatticePackage R}
    (P : PrimeIdealStructurePackage L) where
  primeIdealsClassifiedClosed : P.primeIdealsClassified
  primeAvoidancePrincipleClosed : P.primeAvoidancePrinciple
  functionalIdentitiesInPrimeFactorsClosed : P.functionalIdentitiesInPrimeFactors

def PrimeIdealStructureClosed {R : Type u} [Ring R]
    {L : FunctionalIdentityLatticePackage R}
    (P : PrimeIdealStructurePackage L) : Prop :=
  P.primeIdealsClassified ∧ P.primeAvoidancePrinciple ∧ P.functionalIdentitiesInPrimeFactors

theorem prime_ideal_structure_closed_from_evidence
    {R : Type u} [Ring R] {L : FunctionalIdentityLatticePackage R}
    (P : PrimeIdealStructurePackage L) (E : PrimeIdealStructureEvidence P) :
    PrimeIdealStructureClosed P := by
  exact And.intro E.primeIdealsClassifiedClosed
    (And.intro E.primeAvoidancePrincipleClosed E.functionalIdentitiesInPrimeFactorsClosed)

end FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean
end HautevilleHouse