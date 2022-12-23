#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

check "liquibase"  [ -f /usr/local/liquibase/liquibase ]

# Report result
reportResults