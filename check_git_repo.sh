#!/bin/bash

# Check if the .git directory exists (indicating the repo has been checked out)
if [ ! -d ".git" ]; then
  echo "::error::Repository has not been checked out. Please ensure 'actions/checkout' is included in the workflow."
  exit 1
fi

# Check if tags have been retrieved
if [ -z "$(git tag)" ]; then
  echo "::warning::No tags found. Please ensure 'actions/checkout' is run with fetch-depth set to 0 to retrieve all tags."
fi
