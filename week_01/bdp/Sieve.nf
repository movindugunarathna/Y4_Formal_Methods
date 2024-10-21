Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Sieve))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Sieve))==(Machine(Sieve));
  Level(Machine(Sieve))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Sieve)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Sieve))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Sieve))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Sieve))==(?);
  List_Includes(Machine(Sieve))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Sieve))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Sieve))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Sieve))==(?);
  Context_List_Variables(Machine(Sieve))==(?);
  Abstract_List_Variables(Machine(Sieve))==(?);
  Local_List_Variables(Machine(Sieve))==(primes,sieve);
  List_Variables(Machine(Sieve))==(primes,sieve);
  External_List_Variables(Machine(Sieve))==(primes,sieve)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Sieve))==(?);
  Abstract_List_VisibleVariables(Machine(Sieve))==(?);
  External_List_VisibleVariables(Machine(Sieve))==(?);
  Expanded_List_VisibleVariables(Machine(Sieve))==(?);
  List_VisibleVariables(Machine(Sieve))==(?);
  Internal_List_VisibleVariables(Machine(Sieve))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Sieve))==(btrue);
  Gluing_List_Invariant(Machine(Sieve))==(btrue);
  Expanded_List_Invariant(Machine(Sieve))==(btrue);
  Abstract_List_Invariant(Machine(Sieve))==(btrue);
  Context_List_Invariant(Machine(Sieve))==(btrue);
  List_Invariant(Machine(Sieve))==(sieve <: NAT & primes <: NAT & sieve/\primes = {})
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Sieve))==(btrue);
  Abstract_List_Assertions(Machine(Sieve))==(btrue);
  Context_List_Assertions(Machine(Sieve))==(btrue);
  List_Assertions(Machine(Sieve))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Sieve))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Sieve))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Sieve))==(sieve,primes:=2..maxNumber,{});
  Context_List_Initialisation(Machine(Sieve))==(skip);
  List_Initialisation(Machine(Sieve))==(sieve:=2..maxNumber || primes:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Sieve))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Sieve))==(btrue);
  List_Constraints(Machine(Sieve))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Sieve))==(nextPrime);
  List_Operations(Machine(Sieve))==(nextPrime)
END
&
THEORY ListInputX IS
  List_Input(Machine(Sieve),nextPrime)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Sieve),nextPrime)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Sieve),nextPrime)==(nextPrime)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Sieve),nextPrime)==(sieve/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Sieve),nextPrime)==(sieve/={} | primes,sieve:=primes\/{min(sieve)},{nn | nn: sieve & nn mod min(sieve)/=0});
  List_Substitution(Machine(Sieve),nextPrime)==(primes:=primes\/{min(sieve)} || sieve:={nn | nn: sieve & nn mod min(sieve)/=0})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Sieve))==(maxNumber);
  Inherited_List_Constants(Machine(Sieve))==(?);
  List_Constants(Machine(Sieve))==(maxNumber)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Sieve))==(?);
  Context_List_Defered(Machine(Sieve))==(?);
  Context_List_Sets(Machine(Sieve))==(?);
  List_Valuable_Sets(Machine(Sieve))==(?);
  Inherited_List_Enumerated(Machine(Sieve))==(?);
  Inherited_List_Defered(Machine(Sieve))==(?);
  Inherited_List_Sets(Machine(Sieve))==(?);
  List_Enumerated(Machine(Sieve))==(?);
  List_Defered(Machine(Sieve))==(?);
  List_Sets(Machine(Sieve))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Sieve))==(?);
  Expanded_List_HiddenConstants(Machine(Sieve))==(?);
  List_HiddenConstants(Machine(Sieve))==(?);
  External_List_HiddenConstants(Machine(Sieve))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Sieve))==(btrue);
  Context_List_Properties(Machine(Sieve))==(btrue);
  Inherited_List_Properties(Machine(Sieve))==(btrue);
  List_Properties(Machine(Sieve))==(maxNumber: NAT & maxNumber = 10)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Sieve),nextPrime)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Sieve)) == (maxNumber | ? | primes,sieve | ? | nextPrime | ? | ? | ? | Sieve);
  List_Of_HiddenCst_Ids(Machine(Sieve)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Sieve)) == (maxNumber);
  List_Of_VisibleVar_Ids(Machine(Sieve)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Sieve)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Sieve)) == (Type(maxNumber) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Sieve)) == (Type(primes) == Mvl(SetOf(btype(INTEGER,?,?)));Type(sieve) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Sieve)) == (Type(nextPrime) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
