// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Machineid",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Machineid",
            targets: ["machineidPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "machineidPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/machineidPlugin"),
        .testTarget(
            name: "machineidPluginTests",
            dependencies: ["machineidPlugin"],
            path: "ios/Tests/machineidPluginTests")
    ]
)