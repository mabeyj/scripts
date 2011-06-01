#!/bin/bash

# Generates a random, unambiguous password
# Usage: ./random_password.sh [length]
# Default length is 8

echo `</dev/urandom tr --delete --complement A-HJ-NP-Za-jkmnp-z1-9 | head --bytes=${1:-8}`
