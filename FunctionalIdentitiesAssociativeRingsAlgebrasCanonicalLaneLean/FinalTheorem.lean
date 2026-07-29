import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean

def ConstrainedFunctionalIdentitiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_identities_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalIdentitiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean
end HautevilleHouse