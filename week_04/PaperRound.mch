/* PaperRound
 * Author: movin
 * Creation date: 10/20/2024
 */
MACHINE PaperRound
    VARIABLES
        houseNumbers
        
    INVARIANT
        houseNumbers <: NATURAL1
        
    INITIALISATION
        houseNumbers := {}
        
    OPERATIONS
        addNewHouse( newHouse ) =
        
        PRE
            newHouse : NATURAL1 & newHouse /: houseNumbers
        THEN
            houseNumbers := houseNumbers \/ {newHouse}
        END ;
            numbHouses <-- howManyHouses =
    BEGIN
        numbHouses := card( houseNumbers )
    END
END