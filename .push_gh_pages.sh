#!/bin/bash

rm -rf out || exit 0;
mkdir out;

GH_REPO="@github.com/hturner/conf-management-proposal.git"

FULL_REPO="https://$GH_TOKEN$GH_REPO"

R CMD BATCH 'ghgenerate.R'
cp ghgenerate.Rout out

# initialize repo from out on travis; configure with dummy identity
cd out
git init
git config user.name "Travis CI"
git config user.email "travis@travis.ci"
git add .
git commit -m "deployed to github pages"
git push --force --quiet $FULL_REPO master:gh-pages
