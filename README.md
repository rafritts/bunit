# BashScriptTestingLibrary (BSTL)
...is a unit testing framework for Shell scripts - namely Bash.  

This is a very light weight unit testing library for Bash scripts.  It functions almost identically to Java's JUnit.

You do not need to touch any of your shell scripts to run unit tests against it.  That is to say that your original source code does not need to know about the BSTL in order for the unit tests to work.  

# How to use:

Simply add the following line underneath your shebang (#!/bin/bash)

"source /../BashScriptTestingLibrary.shl"  where it points to the location of the BSTL on your local machine. 

Note, as of now, any functions inside of the unit test suite, will be executed, no matter what thier name is.  

# Functions included in the BSTL
The BSTL includes all the assert functions found in Java's JUnit.

Specifically:

assertEquals expected actual

assertNotSame expected actual

assertNull actual #note that null in this case is empty string ("")

assertTrue "condition"

assertFalse "condition"

Please see the unit tests file "BashScriptTestingLibraryUnitTests.ut" for more examples.  