#!/bin/bash
# Activate virtual environment
. /appenv/bin/activate

# Download requirements to build cache in /build
pip download -d /build -r requirements_test.txt --no-input

# Install application test requirements from /build
pip install --no-index -f /build -r requirements_test.txt

# Run test.sh arguments
exec $@
