const core = require("@actions/core");
const exec = require("@actions/exec");

async function run() {
  try {
    if (!["assemble", "bundle"].includes(core.getInput("build-type"))) {
      throw new Error("Invalid build-type: " + core.getInput("build-type"), ", must be one of: assemble, bundle");
    }
    process.env.BUILD_TYPE = core.getInput("build-type");
    process.env.INCREMENT_BUILD_NUMBER = core.getInput("increment-build-number");
    if (core.getInput("upload-to-play-store") === "true") {
      if (!core.getInput("package-name")) {
        throw new Error("package-name is required when uploading to play store");
      }
      if (!core.getInput("keystore-content")) {
        throw new Error("Missing keystore-content");
      }
      if (!core.getInput("keystore-password")) {
        throw new Error("Missing keystore-password");
      }
      if (!core.getInput("keystore-alias")) {
        throw new Error("Missing keystore-alias");
      }
      if (!core.getInput("json-key-data")) {
        throw new Error("Missing json-key-data");
      }
    }
    process.env.UPLOAD_TO_PLAY_STORE = core.getInput("upload-to-play-store");
    process.env.PACKAGE_NAME = core.getInput("package-name");
    process.env.KEYSTORE_CONTENT = core.getInput("keystore-content");
    process.env.KEYSTORE_PASSWORD = core.getInput("keystore-password");
    process.env.KEYSTORE_ALIAS = core.getInput("keystore-alias");
    process.env.PLAY_STORE_JSON_KEY_DATA = core.getInput("json-key-data");
    process.env.PROJECT_PATH = core.getInput("project-path");
    process.env.OUTPUT_PATH = core.getInput("output-path");
    process.env.GRADLE_TASK = core.getInput("gradle-task");
    process.env.BROWSERSTACK_UPLOAD = core.getInput("browserstack-upload");
    process.env.BROWSERSTACK_USERNAME = core.getInput("browserstack-username");
    process.env.BROWSERSTACK_ACCESS_KEY = core.getInput("browserstack-access-key");
    process.env.FASTLANE_ENV = core.getInput("fastlane-env");
    await exec.exec(`bash ${__dirname}/../build.sh`);
  } catch (error) {
    core.setFailed(error.message);
  }
}

run();
