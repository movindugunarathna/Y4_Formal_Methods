/* PaperRound
 * Author: movin
 * Creation date: 10/5/2024
 */

MACHINE PaperRound
    ABSTRACT_VARIABLES
        houseNumbers

    INVARIANT
        houseNumbers <: NATURAL1

    INITIALISATION
        houseNumbers := {}

    OPERATIONS
        addNewHouse ( newHouse ) =

        PRE
            newHouse : NATURAL1 & newHouse /: houseNumbers
        THEN
            houseNumbers := houseNumbers \/ { newHouse }
        END ;
            numbHouses <-- howManyHouses =
    BEGIN
        numbHouses := card ( houseNumbers )
    END
END
