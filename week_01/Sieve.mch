/* Sieve
 * Author: movin
 * Creation date: 10/17/2024
 */ //Lecture_01 1:15:00
MACHINE Sieve
    CONSTANTS
        maxNumber

    PROPERTIES
        maxNumber : NAT & maxNumber = 10
        
    VARIABLES
        sieve, primes
        
    INVARIANT
        sieve <: NAT & primes <: NAT & sieve/\primes = {}
        
    INITIALISATION
        sieve := 2..maxNumber || primes := {}
        
    OPERATIONS
        nextPrime = PRE sieve /= {} THEN
        primes := primes \/ {min(sieve)} ||
        sieve := {nn|nn : sieve & nn mod min(sieve) /= 0}
    END
END