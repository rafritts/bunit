# BashScriptTestingLibrary (BSTL)
...is a unit testing framework for Shell scripts - namely Bash.  

This is a very light weight unit testing library for Bash scripts.  It functions almost identically to Java's JUnit.

You do not need to touch any of your shell scripts to run unit tests against it.  That is to say that your original source code does not need to know about the BSTL in order for the unit tests to work.  

### How to use:
Simply add the following lines underneath your shebang (`#!/bin/bash`) in your unit test file.

`source /../BashScriptTestingLibrary.shl` where it points to the location of the BSTL on your local machine. 

`source /../ScriptToTest.sh`  where ScriptToTest.sh is the original script you wanted to create unit tests for.

Next, you can create any test case you like, such as:

```
function testScriptVariableEquals5 () {
    assertEquals $ScriptVar 5
} 
```

You can also evaluate that certian conditions have been met, such as a process was started:

```
function testMyProcessStarted () {
    assertTrue "pgrep myProcess.sh > /dev/null"
} 
```


At the very bottom of your unit test suite, you need to call the function `runUnitTests`.

### Functions included in the BSTL
The BSTL includes all the assert functions found in Java's JUnit.

Specifically:

`assertEquals expected actual`

`assertNotSame expected actual`

`assertNull actual`

`assertNotNull actual`

`assertTrue "condition expression"`

`assertFalse "condition expression"`

### Important Notes:

1. As of now, any functions declared with the keyword `function` inside of the unit test suite, will be executed, no matter what thier name is.

2. Null is considered to be empty string `""`

3. You must include quotes around conditional expressions.  These expressions can be anything that can be evaluated in an if statement condition.  Example: `"-f someFile.txt"`

4. Please see the unit tests file `BashScriptTestingLibraryUnitTests.ut` for more examples.  
