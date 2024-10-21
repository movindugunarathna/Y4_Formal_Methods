/* Sets
 * Author: movin
 * Creation date: 10/17/2024
 */
MACHINE
    Sets

CONCRETE_CONSTANTS
    AA , BB , CC , DD

PROPERTIES
    AA <: NAT & AA = { 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 } &
    BB <: NAT & BB = { 1 , 4 , 7 , 9 , 10 } &
    CC <: NAT & CC = { 2 , 4 , 6 } &
    DD <: NAT & DD = 1 .. 12

END
