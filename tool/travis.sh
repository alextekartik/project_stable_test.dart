#!/bin/bash

# Fast fail the script on failures.
set -e

pub run tekartik_pubtest:pubtestdependencies.dart -p vm -j 1
# pub run pubtest:pubtestdependencies -p chrome -j 1
# pub run pubtest:pubtestdependencies -p firefox -j 1
#pub run pubtest:pubtestdependencies -p content-shell -j 1
# -j 1 needed for idb_shim/websql