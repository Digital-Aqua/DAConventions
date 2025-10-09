#!/bin/bash
set -euo pipefail

git init .
git submodule add https://github.com/Digital-Aqua/DAConventions.git External/DAConventions
git submodule update --init --recursive

touch .gitignore
touch README.md
touch flake.nix
touch .env
touch default.env

mkdir -p ./.cursor/rules
ln -s ../../External/DAConventions/Rulesets ./.cursor/rules/Rulesets

mkdir -p ./Source
mkdir -p ./.build
mkdir -p ./.scratch

git add .
git commit -m "Initial commit"

echo "Repository created successfully"
