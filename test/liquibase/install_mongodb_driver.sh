#!/bin/bash

set -e

# Import test library for `check` command
source dev-container-features-test-lib

# Check to make sure the user is vscode
check "user is vscode" whoami | grep vscode

# Mongodb driver specific tests
check "liquibase mongodb driver" bash -c "liquibase --version | grep 'lib/liquibase-mongodb'"
check "mongodb jdbc driver" bash -c "liquibase --version | grep 'lib/mongodb-jdbc'"

# Report result
reportResults