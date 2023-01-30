# Change Log

## [1.3.0] - 2023-30-01

Added optional Ruby and bundler version

### Added

- Optional Ruby version: using the `ruby-version` property you can specify Ruby version you wish to use. If missing latest Ruby version available will be used.
- Optional bundler version: using the `bundler-version` property you can specify bundler version you wish to use. If missing latest bundler version will be used.

## [1.2.0] - 2022-17-06

Added signed builds and optional upload to Play Store.

### Added

- Optional build format: you can build an unsigned APK (`build-type: assemble`) or a signed AAB (`build-type: bundle`). In case of a signed AAB you will also need to provide the `package-name` and the `keystore-content`, `keystore-password` and `keystore-alias`
- Optional upload to the "internal" track of the Google Play Store: set the `upload-to-play-store` property to `true` and be sure to add the `json-key-data` property as a one-line JSON content of your Key file.
