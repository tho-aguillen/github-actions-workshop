set dotenv-load

# Print just help
default:
    @just --list

# Setup the local environment
setup:
    pre-commit install --install-hook commit-msg --install-hook pre-commit --install-hook pre-merge-commit

# Run test workflow
test:
    act --workflows '.github/workflows/test.yml'

# Dispatch event
run_event event="push":
    act {{ event }}

# List available workflows
list:
    act --list

# Run all
run:
    act
