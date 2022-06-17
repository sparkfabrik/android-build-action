# Change Log

## [1.2.0] - 2022-17-06
  
Added signed builds and optional upload to Play Store.

### Added
- Optional build format: you can build an unsigned APK (`build-type: assemble`) or a signed AAB (`build-type: bundle`). In case of a signed AAB you will also need to provide the `package-name` and the `keystore-content`, `keystore-password` and `keystore-alias`
- Optional upload to the "internal" track of the Google Play Store: set the `upload-to-play-store` property to `true` and be sure to add the `json-key-data` property as a one-line JSON content of your Key file.