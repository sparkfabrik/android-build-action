#!/bin/bash -e
OUTPUT_PATH="${PWD}/${OUTPUT_PATH}"

sudo gem install bundler -NV

script_path=$(cd $(dirname ${0}); pwd)
cp -r ${script_path}/fastlane ./
cp -r ${script_path}/Gemfile ./
bundle install

bundle exec fastlane android assemble
