/* FamilyMeeting
 * Author: movin
 * Creation date: 10/17/2024
 */ // Lecture_01: 58:00
MACHINE FamilyMeeting
    SETS
    Family = { Amber , Ben , Claudia , Derek , Emily }

    CONCRETE_CONSTANTS
    Nuisances

    PROPERTIES
    Nuisances <: Family & Nuisances = { Ben , Claudia }

    ABSTRACT_VARIABLES
    Invited

    INVARIANT
    Invited <: Family - Nuisances

    INITIALISATION
    Invited := {}

    OPERATIONS
    addInvite ( new ) =
    PRE new : Family
    THEN
        Invited := Invited \/ { new }
    END
END
