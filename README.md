# BashScriptTestingLibrary (BSTL)
...is a unit testing framework for Shell scripts - namely Bash.  

This is a very light weight unit testing library for Bash scripts.  It functions almost identically to Java's JUnit.

You do not need to touch any of your shell scripts to run unit tests against it.  That is to say that your original source code does not need to know about the BSTL in order for the unit tests to work.  

### How to use:
Simply add the following lines underneath your shebang (#!/bin/bash) in your unit test file.

`source /../BashScriptTestingLibrary.shl` where it points to the location of the BSTL on your local machine. 

`source /../ScriptToTest.sh`  where ScriptToTest.sh is the original script you wanted to create unit tests for.

Next, you can create any such test you like such as:

```
function testAssertEqualsWithStrings () {
    assertEquals "something" "something"
} 
```

**NOTE: as of now, any functions inside of the unit test suite, will be executed, no matter what thier name is.**

### Functions included in the BSTL
The BSTL includes all the assert functions found in Java's JUnit.

Specifically:

`assertEquals expected actual`

`assertNotSame expected actual`

`assertNull actual` NOTE: that null in this case is empty string ("")

`assertTrue "condition expression"`

`assertFalse "condition expression"`

Please see the unit tests file `BashScriptTestingLibraryUnitTests.ut` for more examples.  