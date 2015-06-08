## Functionality Description for the Debugger

### Have the debugger implement an observer pattern.

* The debugger should implement something like an **observer pattern**, which allows the user to see only the relevant parts of the configuration. This part needs more discussion and clarification.

* It's understandable that the debugger should allow for multiple instances, each supporting a different frontend. Hence, an api, or something like a debugger api should be designed. Design decision should be made keeping in mind the fact that the api should support GUIs.

* The debugger will be dealing entirely with KORE classes, and it's the backend used will have to be KORE compatible. 



## Rewrite Engine API

* Should provide support for KORE.

* Match/Substitute should be supported. Given a rule, we should be able to call match substitute to get a rewrite.

* The rewrite engine will not be responsible for maintaining the graph, that will be the responsibility of the debugger instance. 





## Abstract vs Concrete Syntax

* Think of abstract as only representing the essential features, and the concrete syntax as representing the entire syntax according to the grammar. 

## KORE 

* Minimal set of K, that can be accessed using an API to have functionality in K. Allows for skipping the entire user defined parser generation part. 


