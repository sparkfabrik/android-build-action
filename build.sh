#!/bin/bash -e
sudo gem install bundler -NV

script_path=$(cd $(dirname ${0}); pwd)
cp -r ${script_path}/fastlane $PROJECT_PATH
cp ${script_path}/Gemfile $PROJECT_PATH
cd $PROJECT_PATH
bundle install

bundle exec fastlane android assemble
