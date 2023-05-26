# Change Log

## [1.5.0] - 2023-26-05
- Add `fastlane-version` input.

## [1.4.0] - 2023-18-04
- Add `release-track` and `release-status` inputs.

## [1.3.4] - 2023-08-02

- Fix `build.sh` input checks when uploading to Play Store.

## [1.3.3] - 2023-31-01

Now `gemfile.lock` will be checked and if it contains a `BUNDLED WITH` section it will install and use that specific version of bundler.
The default value of `bundler-version` is now set to `2.3` so that the fallback value is compatible with fastlane plugins used by the action.

## [1.3.2] - 2023-30-01

Bundler is now configured with `setup-ruby`.

## [1.3.1] - 2023-30-01

Minor README.md updates.

## [1.3.0] - 2023-30-01

Added optional Ruby and bundler version.

### Added

- Optional Ruby version: using the `ruby-version` property you can specify Ruby version you wish to use. If missing latest Ruby version available will be used.
- Optional bundler version: using the `bundler-version` property you can specify bundler version you wish to use. If missing latest bundler version will be used.
- Optional fastlane env parameter: using `fastlane-env` parameter you can specify wich env fastlane should load while executing the lane.

## [1.2.0] - 2022-17-06

Added signed builds and optional upload to Play Store.

### Added

- Optional build format: you can build an unsigned APK (`build-type: assemble`) or a signed AAB (`build-type: bundle`). In case of a signed AAB you will also need to provide the `package-name` and the `keystore-content`, `keystore-password` and `keystore-alias`
- Optional upload to the "internal" track of the Google Play Store: set the `upload-to-play-store` property to `true` and be sure to add the `json-key-data` property as a one-line JSON content of your Key file.
