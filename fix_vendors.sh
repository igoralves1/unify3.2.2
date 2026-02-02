#!/bin/bash

VENDORS=(
"hs-file-attach"
"hs-go-to"
"hs-header"
"hs-nav-scroller"
"hs-scrollspy"
"hs-show-animation"
"hs-sticky-block"
"hs-toggle-password"
"hs-video-bg"
"hs-video-player"
)

BASE_DIR="/Users/ila/Documents/vhosts/unify3.2.2/docs/src/assets/vendor"

for vendor in "${VENDORS[@]}"; do
  echo "Processing $vendor..."
  cd "$BASE_DIR/$vendor"
  
  # Update package.json
  if [ -f "package.json" ]; then
    # Remove old gulp-sass
    sed -i '' 's/"gulp-sass": "\^4.0.2"/"gulp-sass": "\^5.1.0"/' package.json
    
    # Add sass if not present (simple check)
    if ! grep -q '"sass":' package.json; then
       sed -i '' '/"gulp-sass":/a \
    "sass": "^1.53.0",' package.json
    fi
  fi
  
  # Update gulpfile.js
  if [ -f "gulpfile.js" ]; then
    sed -i '' "s/require('gulp-sass')/require('gulp-sass')(require('sass'))/" gulpfile.js
  fi
  
  # Install and Build
  npm install
  export NODE_OPTIONS=--openssl-legacy-provider
  npx gulp sass-build
  npx gulp js-build
  unset NODE_OPTIONS
  
  echo "Finished $vendor"
  echo "-----------------------------------"
done
