# Build Android App

This action build Android project, export .apk file as GitHub artifact, with optional automatic upload to BrowserStack.

Works with Ionic projects.

## Warning

This is a pre-release and only builds debug apks. We are working on it and plan to relase a full version in the near future.

## Inputs

### `project-path`

**Required** android folder (where `gradlew` is)

### `output-path`

Output path of apk. Default `"output.apk"`.

## Example usage

```yaml
- uses: sparkfabrik/android-build-action@v1.0.0
  with:
    project-path: android
    output-path: my-app.apk
```
