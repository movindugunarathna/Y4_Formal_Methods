Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(FamilyMeeting))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(FamilyMeeting))==(Machine(FamilyMeeting));
  Level(Machine(FamilyMeeting))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(FamilyMeeting)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(FamilyMeeting))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(FamilyMeeting))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(FamilyMeeting))==(?);
  List_Includes(Machine(FamilyMeeting))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(FamilyMeeting))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(FamilyMeeting))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(FamilyMeeting))==(?);
  Context_List_Variables(Machine(FamilyMeeting))==(?);
  Abstract_List_Variables(Machine(FamilyMeeting))==(?);
  Local_List_Variables(Machine(FamilyMeeting))==(Invited);
  List_Variables(Machine(FamilyMeeting))==(Invited);
  External_List_Variables(Machine(FamilyMeeting))==(Invited)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(FamilyMeeting))==(?);
  Abstract_List_VisibleVariables(Machine(FamilyMeeting))==(?);
  External_List_VisibleVariables(Machine(FamilyMeeting))==(?);
  Expanded_List_VisibleVariables(Machine(FamilyMeeting))==(?);
  List_VisibleVariables(Machine(FamilyMeeting))==(?);
  Internal_List_VisibleVariables(Machine(FamilyMeeting))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(FamilyMeeting))==(btrue);
  Gluing_List_Invariant(Machine(FamilyMeeting))==(btrue);
  Expanded_List_Invariant(Machine(FamilyMeeting))==(btrue);
  Abstract_List_Invariant(Machine(FamilyMeeting))==(btrue);
  Context_List_Invariant(Machine(FamilyMeeting))==(btrue);
  List_Invariant(Machine(FamilyMeeting))==(Invited <: Family-Nuisances)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(FamilyMeeting))==(btrue);
  Abstract_List_Assertions(Machine(FamilyMeeting))==(btrue);
  Context_List_Assertions(Machine(FamilyMeeting))==(btrue);
  List_Assertions(Machine(FamilyMeeting))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(FamilyMeeting))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(FamilyMeeting))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(FamilyMeeting))==(Invited:={});
  Context_List_Initialisation(Machine(FamilyMeeting))==(skip);
  List_Initialisation(Machine(FamilyMeeting))==(Invited:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(FamilyMeeting))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(FamilyMeeting))==(btrue);
  List_Constraints(Machine(FamilyMeeting))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(FamilyMeeting))==(addInvite);
  List_Operations(Machine(FamilyMeeting))==(addInvite)
END
&
THEORY ListInputX IS
  List_Input(Machine(FamilyMeeting),addInvite)==(new)
END
&
THEORY ListOutputX IS
  List_Output(Machine(FamilyMeeting),addInvite)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(FamilyMeeting),addInvite)==(addInvite(new))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(FamilyMeeting),addInvite)==(new: Family)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(FamilyMeeting),addInvite)==(new: Family | Invited:=Invited\/{new});
  List_Substitution(Machine(FamilyMeeting),addInvite)==(Invited:=Invited\/{new})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(FamilyMeeting))==(Nuisances);
  Inherited_List_Constants(Machine(FamilyMeeting))==(?);
  List_Constants(Machine(FamilyMeeting))==(Nuisances)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(FamilyMeeting),Family)==({Amber,Ben,Claudia,Derek,Emily});
  Context_List_Enumerated(Machine(FamilyMeeting))==(?);
  Context_List_Defered(Machine(FamilyMeeting))==(?);
  Context_List_Sets(Machine(FamilyMeeting))==(?);
  List_Valuable_Sets(Machine(FamilyMeeting))==(?);
  Inherited_List_Enumerated(Machine(FamilyMeeting))==(?);
  Inherited_List_Defered(Machine(FamilyMeeting))==(?);
  Inherited_List_Sets(Machine(FamilyMeeting))==(?);
  List_Enumerated(Machine(FamilyMeeting))==(Family);
  List_Defered(Machine(FamilyMeeting))==(?);
  List_Sets(Machine(FamilyMeeting))==(Family)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(FamilyMeeting))==(?);
  Expanded_List_HiddenConstants(Machine(FamilyMeeting))==(?);
  List_HiddenConstants(Machine(FamilyMeeting))==(?);
  External_List_HiddenConstants(Machine(FamilyMeeting))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(FamilyMeeting))==(btrue);
  Context_List_Properties(Machine(FamilyMeeting))==(btrue);
  Inherited_List_Properties(Machine(FamilyMeeting))==(btrue);
  List_Properties(Machine(FamilyMeeting))==(Nuisances <: Family & Nuisances = {Ben,Claudia} & Family: FIN(INTEGER) & not(Family = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(FamilyMeeting),addInvite)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(FamilyMeeting)) == (Nuisances,Family,Amber,Ben,Claudia,Derek,Emily | ? | Invited | ? | addInvite | ? | ? | ? | FamilyMeeting);
  List_Of_HiddenCst_Ids(Machine(FamilyMeeting)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(FamilyMeeting)) == (Nuisances);
  List_Of_VisibleVar_Ids(Machine(FamilyMeeting)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(FamilyMeeting)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(FamilyMeeting)) == (Type(Family) == Cst(SetOf(etype(Family,0,4))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(FamilyMeeting)) == (Type(Amber) == Cst(etype(Family,0,4));Type(Ben) == Cst(etype(Family,0,4));Type(Claudia) == Cst(etype(Family,0,4));Type(Derek) == Cst(etype(Family,0,4));Type(Emily) == Cst(etype(Family,0,4));Type(Nuisances) == Cst(SetOf(etype(Family,"[Nuisances","]Nuisances"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(FamilyMeeting)) == (Type(Invited) == Mvl(SetOf(etype(Family,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(FamilyMeeting)) == (Type(addInvite) == Cst(No_type,etype(Family,?,?)))
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
