#!/bin/bash

# This script has no real purpose other than to contain functions for unit tests to call. 

script_var=""

function main () {
    setScriptVarToFive
    createSomeLogFile
    startMyProcess
}

function setScriptVarToFive () {
    script_var=5
}

function createSomeLogFile () {
    echo "Some Sample Text" > logfile.log
}

function startMyProcess () {
    /bin/bash &
}

main