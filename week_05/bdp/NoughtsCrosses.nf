Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(NoughtsCrosses))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(NoughtsCrosses))==(Machine(NoughtsCrosses));
  Level(Machine(NoughtsCrosses))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(NoughtsCrosses)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(NoughtsCrosses))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(NoughtsCrosses))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(NoughtsCrosses))==(?);
  List_Includes(Machine(NoughtsCrosses))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(NoughtsCrosses))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(NoughtsCrosses))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(NoughtsCrosses))==(?);
  Context_List_Variables(Machine(NoughtsCrosses))==(?);
  Abstract_List_Variables(Machine(NoughtsCrosses))==(?);
  Local_List_Variables(Machine(NoughtsCrosses))==(turn,currentOutcome,crosses,noughts);
  List_Variables(Machine(NoughtsCrosses))==(turn,currentOutcome,crosses,noughts);
  External_List_Variables(Machine(NoughtsCrosses))==(turn,currentOutcome,crosses,noughts)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(NoughtsCrosses))==(?);
  Abstract_List_VisibleVariables(Machine(NoughtsCrosses))==(?);
  External_List_VisibleVariables(Machine(NoughtsCrosses))==(?);
  Expanded_List_VisibleVariables(Machine(NoughtsCrosses))==(?);
  List_VisibleVariables(Machine(NoughtsCrosses))==(?);
  Internal_List_VisibleVariables(Machine(NoughtsCrosses))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(NoughtsCrosses))==(btrue);
  Gluing_List_Invariant(Machine(NoughtsCrosses))==(btrue);
  Expanded_List_Invariant(Machine(NoughtsCrosses))==(btrue);
  Abstract_List_Invariant(Machine(NoughtsCrosses))==(btrue);
  Context_List_Invariant(Machine(NoughtsCrosses))==(btrue);
  List_Invariant(Machine(NoughtsCrosses))==(noughts <: Grid & crosses <: Grid & noughts/\crosses = {} & currentOutcome: STATES & turn: Players)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(NoughtsCrosses))==(btrue);
  Abstract_List_Assertions(Machine(NoughtsCrosses))==(btrue);
  Context_List_Assertions(Machine(NoughtsCrosses))==(btrue);
  List_Assertions(Machine(NoughtsCrosses))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(NoughtsCrosses))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(NoughtsCrosses))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(NoughtsCrosses))==(noughts,crosses,currentOutcome,turn:={},{},Ongoing,Noughts);
  Context_List_Initialisation(Machine(NoughtsCrosses))==(skip);
  List_Initialisation(Machine(NoughtsCrosses))==(noughts:={} || crosses:={} || currentOutcome:=Ongoing || turn:=Noughts)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(NoughtsCrosses))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(NoughtsCrosses))==(btrue);
  List_Constraints(Machine(NoughtsCrosses))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(NoughtsCrosses))==(placeNought,placeCross);
  List_Operations(Machine(NoughtsCrosses))==(placeNought,placeCross)
END
&
THEORY ListInputX IS
  List_Input(Machine(NoughtsCrosses),placeNought)==(pp);
  List_Input(Machine(NoughtsCrosses),placeCross)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Machine(NoughtsCrosses),placeNought)==(res);
  List_Output(Machine(NoughtsCrosses),placeCross)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(NoughtsCrosses),placeNought)==(res <-- placeNought(pp));
  List_Header(Machine(NoughtsCrosses),placeCross)==(res <-- placeCross(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(NoughtsCrosses),placeNought)==(pp: Grid & turn = Noughts);
  List_Precondition(Machine(NoughtsCrosses),placeCross)==(pp: Grid & turn = Crosses)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(NoughtsCrosses),placeCross)==(pp: Grid & turn = Crosses | pp: noughts\/crosses ==> res:=Failure [] not(pp: noughts\/crosses) ==> crosses,currentOutcome,turn,res:=crosses\/{pp},Crosses_win,Noughts,Success);
  Expanded_List_Substitution(Machine(NoughtsCrosses),placeNought)==(pp: Grid & turn = Noughts | pp: noughts\/crosses ==> res:=Failure [] not(pp: noughts\/crosses) ==> noughts,currentOutcome,turn,res:=noughts\/{pp},Noughts_win,Crosses,Success);
  List_Substitution(Machine(NoughtsCrosses),placeNought)==(IF pp: noughts\/crosses THEN res:=Failure ELSE noughts:=noughts\/{pp} || currentOutcome:=Noughts_win || turn:=Crosses || res:=Success END);
  List_Substitution(Machine(NoughtsCrosses),placeCross)==(IF pp: noughts\/crosses THEN res:=Failure ELSE crosses:=crosses\/{pp} || currentOutcome:=Crosses_win || turn:=Noughts || res:=Success END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(NoughtsCrosses))==(Grid,winningSubsets);
  Inherited_List_Constants(Machine(NoughtsCrosses))==(?);
  List_Constants(Machine(NoughtsCrosses))==(Grid,winningSubsets)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(NoughtsCrosses),Players)==({Noughts,Crosses});
  Context_List_Enumerated(Machine(NoughtsCrosses))==(?);
  Context_List_Defered(Machine(NoughtsCrosses))==(?);
  Context_List_Sets(Machine(NoughtsCrosses))==(?);
  List_Valuable_Sets(Machine(NoughtsCrosses))==(?);
  Inherited_List_Enumerated(Machine(NoughtsCrosses))==(?);
  Inherited_List_Defered(Machine(NoughtsCrosses))==(?);
  Inherited_List_Sets(Machine(NoughtsCrosses))==(?);
  List_Enumerated(Machine(NoughtsCrosses))==(Players,Results,STATES);
  List_Defered(Machine(NoughtsCrosses))==(?);
  List_Sets(Machine(NoughtsCrosses))==(Players,Results,STATES);
  Set_Definition(Machine(NoughtsCrosses),Results)==({Success,Failure});
  Set_Definition(Machine(NoughtsCrosses),STATES)==({Noughts_win,Crosses_win,Draw,Ongoing})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(NoughtsCrosses))==(?);
  Expanded_List_HiddenConstants(Machine(NoughtsCrosses))==(?);
  List_HiddenConstants(Machine(NoughtsCrosses))==(?);
  External_List_HiddenConstants(Machine(NoughtsCrosses))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(NoughtsCrosses))==(btrue);
  Context_List_Properties(Machine(NoughtsCrosses))==(btrue);
  Inherited_List_Properties(Machine(NoughtsCrosses))==(btrue);
  List_Properties(Machine(NoughtsCrosses))==(Grid = (1..3)*(1..3) & winningSubsets <: POW(Grid) & winningSubsets = {{1}*(1..3),{2}*(1..3),{3}*(1..3),(1..3)*{1},(1..3)*{2},(1..3)*{3},id(1..3),{1|->3,2|->2,3|->1}} & Players: FIN(INTEGER) & not(Players = {}) & Results: FIN(INTEGER) & not(Results = {}) & STATES: FIN(INTEGER) & not(STATES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(NoughtsCrosses),placeNought)==(?);
  List_ANY_Var(Machine(NoughtsCrosses),placeCross)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(NoughtsCrosses)) == (Grid,winningSubsets,Players,Results,STATES,Noughts,Crosses,Success,Failure,Noughts_win,Crosses_win,Draw,Ongoing | ? | turn,currentOutcome,crosses,noughts | ? | placeNought,placeCross | ? | ? | ? | NoughtsCrosses);
  List_Of_HiddenCst_Ids(Machine(NoughtsCrosses)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(NoughtsCrosses)) == (Grid,winningSubsets);
  List_Of_VisibleVar_Ids(Machine(NoughtsCrosses)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(NoughtsCrosses)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(NoughtsCrosses)) == (Type(Players) == Cst(SetOf(etype(Players,0,1)));Type(Results) == Cst(SetOf(etype(Results,0,1)));Type(STATES) == Cst(SetOf(etype(STATES,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(NoughtsCrosses)) == (Type(Noughts) == Cst(etype(Players,0,1));Type(Crosses) == Cst(etype(Players,0,1));Type(Success) == Cst(etype(Results,0,1));Type(Failure) == Cst(etype(Results,0,1));Type(Noughts_win) == Cst(etype(STATES,0,3));Type(Crosses_win) == Cst(etype(STATES,0,3));Type(Draw) == Cst(etype(STATES,0,3));Type(Ongoing) == Cst(etype(STATES,0,3));Type(Grid) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(winningSubsets) == Cst(SetOf(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(NoughtsCrosses)) == (Type(turn) == Mvl(etype(Players,?,?));Type(currentOutcome) == Mvl(etype(STATES,?,?));Type(crosses) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(noughts) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(NoughtsCrosses)) == (Type(placeCross) == Cst(etype(Results,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(placeNought) == Cst(etype(Results,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
