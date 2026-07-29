import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean

structure FunctionalIdentityInhabitants where
  carrier : Type u
  ringOps : Ring carrier
  algebraOps : Algebra (carrier) carrier
  functionalIdentityWitness : Prop
  closure : closure?  -- placeholder

structure AdmissibleClass where
  object : FunctionalIdentityInhabitants
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (fun _ => True) A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalIdentitiesAssociativeRingsAlgebrasCanonicalLaneLean
end HautevilleHouse