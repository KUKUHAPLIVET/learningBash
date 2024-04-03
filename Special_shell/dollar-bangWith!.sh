#!/bin/bash

jmeter_server_pid=""

start_jmeter() {
  echo "Starting jmeter server process..."
  jmeter-server &
  jmeter_server_pid=$(echo $!)
}

start_jmeter

echo "more commands running here..."

echo "Terminating jmeter server by using ${jmeter_server_pig} Process Id."
kill _SIGTERM "${jmeter_server_pid}"