# Strategy

## Intent 
Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy allows algorithms vary independently from the clients using them.

## Use when 
- Several related classes only differ in their behaviour
- Different variants of an algorithm are needed - e.g. ones reflecting different space/time trade-offs
- An algorithm is using data that a client shouldn't know about
- A class defines many behaviours, which appear as multiple conditional statements in its operations. Instead of conditionals, the related branches can be in their own strategy class. 

