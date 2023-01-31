#!/bin/bash -e

echo "BUILD TYPE: ${BUILD_TYPE}"
if [ "${BUILD_TYPE}" != "assemble" -a "${BUILD_TYPE}" != "bundle" ]; then
    echo "Invalid build-type: " ${BUILD_TYPE}
    exit 1
fi

echo "${UPLOAD_TO_PLAY_STORE}"
if [ "${UPLOAD_TO_PLAY_STORE}" = "true" ]; then
    if [ -n "${PACKAGE_NAME}" ]; then
        echo "package-name is required when uploading to play store"
        exit 2
    elif [ -n "${KEYSTORE_CONTENT}" ]; then
        echo "Missing keystore-content"
        exit 3
    elif [ -n "${KEYSTORE_PASSWORD}" ]; then
        echo "Missing keystore-password"
        exit 4
    elif [ -n "${KEYSTORE_ALIAS}" ]; then
        echo "Missing keystore-alias"
        exit 5
    elif [ -n "${JSON_KEY_DATA}" ]; then
        echo "Missing json-key-data"
        exit 6
    fi
fi

export PLAY_STORE_JSON_KEY_DATA=${JSON_KEY_DATA}
OUTPUT_PATH="${PWD}/${OUTPUT_PATH}"

# If the variable KEYSTORE_CONTENT is set, then the keystore is created from the content of the variable.
if [ -n "${KEYSTORE_CONTENT}" ]; then
    echo "Creating keystore from content"
    echo $KEYSTORE_CONTENT | base64 --decode > "keystore.jks"
fi

ruby --version
bundle exec fastlane install_plugins

# If the variable FASTLANE_ENV is set then run fastlane with the --env equal to the variable.
if [ -n "${FASTLANE_ENV}" ]; then
    echo "Running fastlane with environment: ${FASTLANE_ENV}"
    bundle exec fastlane --env ${FASTLANE_ENV} android $BUILD_TYPE
else
    echo "Running fastlane"
    bundle exec fastlane android $BUILD_TYPE
fi
