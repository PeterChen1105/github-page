#!/usr/bin/env sh

set -e

# Build
npm run build

# Navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:PeterChen1105/github-page.git master:gh-pages
cd -