# SharpsellSDK

`SharpsellSDK` is a Swift Package Manager package that delivers the Sharpsell
iOS binary frameworks through one product.

## Requirements

- Xcode with Swift Package Manager support
- Access to `https://github.com/enparadigm/SharpsellCore.git`; this package
  resolves its `SharpsellCore` dependency from branch `abc`

## Add the package

### Local checkout

1. In Xcode, choose **File → Add Package Dependencies…**.
2. Choose **Add Local…**, then select the folder containing this `Package.swift`
   file.
3. Add the `SharpsellSDK` product to the app target that will use it.

### Git repository

1. In Xcode, choose **File → Add Package Dependencies…**.
2. Enter the Git URL for the repository that contains this package.
3. Choose the version rule required by your app, then add the `SharpsellSDK`
   product to the app target.

## Use the SDK

Import the umbrella module from code in the linked app target:

```swift
import SharpsellSDK

print(SharpsellSDK.version)
```

The package product includes `App`, `Flutter`, `WebRTC`, `DailyFlutter`, and
`FBLPromises`. Import an individual module only when the app directly uses
that module's API:

```swift
import App
```

## Verify integration

Build the app target in Xcode. If package resolution fails, confirm that the
app can access the `SharpsellCore` repository and branch `abc`.
