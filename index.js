const core = require("@actions/core");
const exec = require("@actions/exec");

async function run() {
  try {
    process.env.PROJECT_PATH = core.getInput("project-path");
    process.env.OUTPUT_PATH = core.getInput("output-path");
    process.env.BROWSERSTACK_UPLOAD = core.getInput("browserstack-upload");
    process.env.BROWSERSTACK_USERNAME = core.getInput("browserstack-username");
    process.env.BROWSERSTACK_ACCESS_KEY = core.getInput("browserstack-access-key");
    await exec.exec(`bash ${__dirname}/../build.sh`);
  } catch (error) {
    core.setFailed(error.message);
  }
}

run();
