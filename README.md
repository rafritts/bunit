# Bash Script Testing Library (BSTL)
...is a unit testing framework for Shell scripts - namely Bash.  

This is a very light weight (as in one file) unit testing library for Bash scripts.  It functions similarly to Java's JUnit.

You do not need to touch any of your shell scripts to run unit tests against it.  That is to say, that your original source code does not need to know about the BSTL in order for the unit tests to work.  

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

```
./MyUnitTestSuite.ut
```

Or you can run it verbosely using the `-v` or `--verbose` flags, which will print out all test case results, even if they pass.  

```
./MyUnitTestSuite.ut -v
./MyUnitTestSuite.ut --verbose
``` 


### Functions included in the BSTL:
The BSTL includes most the assert functions found in Java's JUnit.

Specifically:

```
assertEquals expected actual

assertNotSame expected actual

assertNull "actual"

assertNotNull "actual"

assertTrue "condition expression"

assertFalse "condition expression"

assertContains needle haystack
```

### Important Notes:

1. Only functions prefixed with `test`, i.e: `function test<functionName>` inside of the unit test suite will be executed. Please refer to `BashScriptTestingLibraryUnitTests.ut` for examples.

2. Null is considered to be empty string `""`. The assertNull requires you to enclose your argument in quotes.

3. You must include quotes around conditional expressions.  These expressions can be anything that can be evaluated in an if statement condition.  Example: `"-f someFile.txt"`

4. The extension `.shl` is an extension I perfer to give to library shell scripts.  It stands for `.shellLibrary`. 

5. The extension `.ut` is an extension I prefer to give to unit test suites.  It stands for `.unitTest`.

6. Both of the above extensions are meaningless from a linux perspective, so you can change them to be whatever you like.

7. If all of your unit tests pass, and you did not run the script with the verbose flag, you will simply see a success message.

8. If any of your unit tests fail, the script will exit after all tests have run, with a status code of 1.

9. Please see the unit tests file `BashScriptTestingLibraryUnitTests.ut` for more examples.  

### Please remember this is a work in progress!
