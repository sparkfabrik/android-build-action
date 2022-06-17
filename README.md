# Build Android App

This action build Android project, export .apk file as GitHub artifact, with optional automatic upload to BrowserStack AppLive.

Tested with Ionic, React Native and native android projects.

## New in 1.2.0

- Optional build format: you can build an unsigned APK (`build-type: assemble`) or a signed AAB (`build-type: bundle`). In case of a signed AAB you will also need to provide the `package-name` and the `keystore-content`, `keystore-password` and `keystore-alias`
- Optional upload to the "internal" track of the Google Play Store: set the `upload-to-play-store` property to `true` and be sure to add the `json-key-data` property as a one-line JSON content of your Key file.

## Inputs

### `project-path`

**Required** android folder (where `gradlew` is)

### `output-path`

Output path of apk. Default `"output.apk"`.

### `gradle-task`

Name of the gradle task to run. Default `"assembleDebug"`.

## Example usage

```yaml
- uses: sparkfabrik/android-build-action@v1.0.0
  with:
    project-path: android
    output-path: my-app.apk
    browserstack-upload: true
    browserstack-username: ${{ secrets.BROWSERSTACK_USERNAME }}
    browserstack-access-key: ${{ secrets.BROWSERSTACK_ACCESS_KEY }}
```

## Contributions Welcome!

If you have any other inputs you'd like to add, feel free to create PR. Remember to run `yarn install` and `yarn bundle` if you make changes to the index.js.
