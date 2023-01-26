#!/bin/bash -e
OUTPUT_PATH="${PWD}/${OUTPUT_PATH}"

# If the variable KEYSTORE_CONTENT is set, then the keystore is created from the content of the variable.
if [ -n "${KEYSTORE_CONTENT}" ]; then
    echo "Creating keystore from content"
    echo $KEYSTORE_CONTENT | base64 --decode > "keystore.jks"
fi

echo "Running bundler with version: ${BUNDLER_VERSION}"
sudo gem install bundler -NV -v ${BUNDLER_VERSION}

script_path=$(cd $(dirname ${0}); pwd)
cp -r ${script_path}/fastlane ./
cp -r ${script_path}/Gemfile ./

bundle install

# If the variable FASTLANE_ENV is set then run fastlane with the --env equal to the variable.
if [ -n "${FASTLANE_ENV}" ]; then
    echo "Running fastlane with environment: ${FASTLANE_ENV}"
    fastlane --env ${FASTLANE_ENV} android $BUILD_TYPE
else
    echo "Running fastlane"
    fastlane android $BUILD_TYPE
fi
