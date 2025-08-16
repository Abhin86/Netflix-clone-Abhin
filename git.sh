#!/bin/bash

read -p "Enter commit message: " COMMIT

git add .
git commit -m "$COMMIT"
git push
