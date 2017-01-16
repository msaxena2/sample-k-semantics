### Needed Stuff to Make the Java Backend work over MiniKore
* CompiledDefinition object has a main execution module entry. Need some way of specifying the main execution module in Minikore Processed Definition.
In order to fix the problem, added a class to MiniKore called MiniKore utils, which helps with such tasks. 
* Converting MiniKore Definition to Kil Definition - This requires bypassing the Kore to Backend Kil Pass, by creating a similar pass over minikore. 

