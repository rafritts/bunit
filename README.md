# Bash Script Testing Library (BSTL)
...is a unit testing framework for Shell scripts - namely Bash.  

This is a fork of [Ryan Fritts's project](https://github.com/rafritts/BashScriptTestingLibrary). The main difference with this fork is that the unit tests run without aborting upon failure, allowing for the running of all the unit tests and then displaying which tests passed and failed. 

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

When you are ready to run your unit test suite, simply run it as you would any other script.

`./MyUnitTestSuite.ut`

Or you can run it verbosely using the `-v` flag, which will print out all test case results, even if they pass.  

`./MyUnitTestSuite.ut -v`


### Functions included in the BSTL
The BSTL includes most the assert functions found in Java's JUnit.

Specifically:

`assertEquals expected actual`

`assertNotSame expected actual`

`assertNull "actual"`

`assertNotNull "actual"`

`assertTrue "condition expression"`

`assertFalse "condition expression"`

`assertContains needle haystack`

### Important Notes:

1. Only functions prefixed with `test`, i.e: `function test<functionName>` inside of the unit test suite will be executed. Please refer to `BashScriptTestingLibraryUnitTests.ut` for examples.

2. Null is considered to be empty string `""`. The assertNull requires you to enclose your argument in quotes.

3. You must include quotes around conditional expressions.  These expressions can be anything that can be evaluated in an if statement condition.  Example: `"-f someFile.txt"`

4. The extension `.shl` is an extension I prefer to give library shell scripts.  It stands for `.shellLibrary`.  `.ut` is the extension for the sample unit testing suites.

5. Both of the above extensions are meaningless, and you can change them to be whatever you like.

6. Please see the unit tests file `BashScriptTestingLibraryUnitTests.ut` for more examples.  
