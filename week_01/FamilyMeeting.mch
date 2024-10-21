/* FamilyMeeting
 * Author: movin
 * Creation date: 10/17/2024
 */ // Lecture_01: 58:00
MACHINE FamilyMeeting
    SETS
    Family = {Amber, Ben, Claudia, Derek, Emily}
    
    CONSTANTS
    Nuisances
    
    PROPERTIES
    Nuisances <: Family & Nuisances = {Ben, Claudia}
    
    VARIABLES
    Invited
    
    INVARIANT
    Invited <: Family - Nuisances
    
    INITIALISATION
    Invited := {}
    
    OPERATIONS
    addInvite(new) =
    PRE new : Family // checking if new is a member of Family
    THEN
        Invited := Invited \/ { new } 
    END
END