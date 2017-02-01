#!/bin/bash

# This script has no real purpose other than to contain functions for unit tests to call.

script_var=""

main () {
    setScriptVarToFive
    createSomeLogFile
    startMyProcess
}

setScriptVarToFive () {
    script_var=5
}

createSomeLogFile () {
    echo "Some Sample Text" > logfile.log
}

startMyProcess () {
    /bin/bash &
}

main
