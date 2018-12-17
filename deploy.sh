#!/bin/bash 
# Deploys static files to bhavishyagopesh.github.io
set -ex
rm -rf public
hugo
cp -r public ~/non-trivial-pursuit/ 
cd ~/non-trivial-pursuit/ 
git commit -am "publish changes" 
git push

