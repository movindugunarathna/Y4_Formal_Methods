/* NoughtsCrosses
 * Author: movin
 * Creation date: 10/26/2024
*/

MACHINE
        NoughtsCrosses

SETS
        Players = { Noughts , Crosses } ;
        Results = { Success , Failure } ;
        STATES = { Noughts_win , Crosses_win , Draw , Ongoing } // Tutorial_5

CONCRETE_CONSTANTS
        Grid , winningSubsets

PROPERTIES
        Grid = ( 1 .. 3 ) * ( 1 .. 3 ) &
        winningSubsets <: POW ( Grid ) &
        winningSubsets = { { 1 } * ( 1 .. 3 ) , { 2 } * ( 1 .. 3 ) , { 3 } * ( 1 .. 3 ) ,
                        ( 1 .. 3 ) * { 1 } , ( 1 .. 3 ) * { 2 } , ( 1 .. 3 ) * { 3 } ,
                        id ( 1 .. 3 ) , { 1 |-> 3 , 2 |-> 2 , 3 |-> 1 } }
ABSTRACT_VARIABLES
        noughts , crosses , currentOutcome , turn // turn tracks whose turn it is 

INVARIANT
        noughts <: Grid &
        crosses <: Grid &
        noughts /\ crosses = {} & //#3 noughts and crosses cant be exist on same position
        currentOutcome : STATES & // currentOutcome must be one from STATES
        turn : Players

INITIALISATION
        noughts := {} || crosses := {} || currentOutcome := Ongoing || turn := Noughts

OPERATIONS

        res <-- placeNought ( pp ) =
        PRE
                pp : Grid & turn = Noughts // Ensuring if it's Noughts' turn
        THEN
                IF
                        pp : noughts \/ crosses
                THEN
                        res := Failure
                ELSE
                        noughts := noughts \/ { pp } ||
                        currentOutcome := Noughts_win ||
            turn := Crosses || // Switching turn to Crosses
                        res := Success
                END
        END ;

        res <-- placeCross ( pp ) =
        PRE
        pp : Grid & turn = Crosses // Ensuring if it's Crosses' turn
        THEN
                IF
                        pp : noughts \/ crosses
                THEN
                        res := Failure
                ELSE
                        crosses := crosses \/ { pp } ||
                        currentOutcome := Crosses_win ||
            turn := Noughts || // Switching turn to Noughts
                        res := Success
                END
        END


END
