// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SharpsellSDK",
    products: [
        .library(
            name: "SharpsellSDK",
            targets: [
                "SharpsellSDK",
                "App",
                "Flutter",
                "WebRTC",
                "DailyFlutter",
                "FBLPromises",
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/enparadigm/SharpsellCore.git",
            branch: "abc"
        ),
    ],
    targets: [
        .binaryTarget(name: "App", path: "Artifacts/Release/App.xcframework"),
        .binaryTarget(name: "Flutter", path: "Artifacts/Release/Flutter.xcframework"),
        .binaryTarget(name: "WebRTC", path: "Artifacts/Release/WebRTC.xcframework"),
        .binaryTarget(name: "DailyFlutter", path: "Artifacts/Release/daily_flutter.xcframework"),
        .binaryTarget(name: "FBLPromises", path: "Artifacts/Release/FBLPromises.xcframework"),
        .target(
            name: "SharpsellSDK",
            dependencies: [
                "App",
                "Flutter",
                "WebRTC",
                "DailyFlutter",
                "FBLPromises",
                .product(name: "SharpsellCore", package: "SharpsellCore"),
            ]
        ),
    ]
)
