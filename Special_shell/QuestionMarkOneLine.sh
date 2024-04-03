#!/bin/bash
ehco "hello" || { echo "Error: Failed to run command" ; exit1; }

exit 0 