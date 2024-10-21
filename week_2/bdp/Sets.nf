Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Sets))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Sets))==(Machine(Sets));
  Level(Machine(Sets))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Sets)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Sets))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Sets))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Sets))==(?);
  List_Includes(Machine(Sets))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Sets))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Sets))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Sets))==(?);
  Context_List_Variables(Machine(Sets))==(?);
  Abstract_List_Variables(Machine(Sets))==(?);
  Local_List_Variables(Machine(Sets))==(?);
  List_Variables(Machine(Sets))==(?);
  External_List_Variables(Machine(Sets))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Sets))==(?);
  Abstract_List_VisibleVariables(Machine(Sets))==(?);
  External_List_VisibleVariables(Machine(Sets))==(?);
  Expanded_List_VisibleVariables(Machine(Sets))==(?);
  List_VisibleVariables(Machine(Sets))==(?);
  Internal_List_VisibleVariables(Machine(Sets))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Sets))==(btrue);
  Gluing_List_Invariant(Machine(Sets))==(btrue);
  Expanded_List_Invariant(Machine(Sets))==(btrue);
  Abstract_List_Invariant(Machine(Sets))==(btrue);
  Context_List_Invariant(Machine(Sets))==(btrue);
  List_Invariant(Machine(Sets))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Sets))==(btrue);
  Abstract_List_Assertions(Machine(Sets))==(btrue);
  Context_List_Assertions(Machine(Sets))==(btrue);
  List_Assertions(Machine(Sets))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Sets))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Sets))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Sets))==(skip);
  Context_List_Initialisation(Machine(Sets))==(skip);
  List_Initialisation(Machine(Sets))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Sets))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Sets))==(btrue);
  List_Constraints(Machine(Sets))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Sets))==(?);
  List_Operations(Machine(Sets))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Sets))==(AA,BB,CC,DD);
  Inherited_List_Constants(Machine(Sets))==(?);
  List_Constants(Machine(Sets))==(AA,BB,CC,DD)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Sets))==(?);
  Context_List_Defered(Machine(Sets))==(?);
  Context_List_Sets(Machine(Sets))==(?);
  List_Valuable_Sets(Machine(Sets))==(?);
  Inherited_List_Enumerated(Machine(Sets))==(?);
  Inherited_List_Defered(Machine(Sets))==(?);
  Inherited_List_Sets(Machine(Sets))==(?);
  List_Enumerated(Machine(Sets))==(?);
  List_Defered(Machine(Sets))==(?);
  List_Sets(Machine(Sets))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Sets))==(?);
  Expanded_List_HiddenConstants(Machine(Sets))==(?);
  List_HiddenConstants(Machine(Sets))==(?);
  External_List_HiddenConstants(Machine(Sets))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Sets))==(btrue);
  Context_List_Properties(Machine(Sets))==(btrue);
  Inherited_List_Properties(Machine(Sets))==(btrue);
  List_Properties(Machine(Sets))==(AA <: NAT & AA = {1,2,3,4,5,6,7,8} & BB <: NAT & BB = {1,4,7,9,10} & CC <: NAT & CC = {2,4,6} & DD <: NAT & DD = 1..12)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Sets)) == (AA,BB,CC,DD | ? | ? | ? | ? | ? | ? | ? | Sets);
  List_Of_HiddenCst_Ids(Machine(Sets)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Sets)) == (AA,BB,CC,DD);
  List_Of_VisibleVar_Ids(Machine(Sets)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Sets)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Sets)) == (Type(AA) == Cst(SetOf(btype(INTEGER,"[AA","]AA")));Type(BB) == Cst(SetOf(btype(INTEGER,"[BB","]BB")));Type(CC) == Cst(SetOf(btype(INTEGER,"[CC","]CC")));Type(DD) == Cst(SetOf(btype(INTEGER,"[DD","]DD"))))
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
