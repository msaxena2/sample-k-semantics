## Guice Related Notes

Some insight into how Guice has been setup in the K framework. These notes were taken while trying to make sense of how the project has been setup, from the point of view of a guice noob. If you're a new K developer, you may find these helpful. If you're not a new developer, or a developer at all, these pages will most likely be 
gibberish. 

### Control Flow

* Service Loader loads the appropriate modules loaders. 

* Get Injector loads the modules based on the user input.