// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxSVProgressHUD",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RxSVProgressHUD",
            targets: ["RxSVProgressHUD"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/SVProgressHUD/SVProgressHUD.git", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RxSVProgressHUD",
            dependencies: [
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                "SVProgressHUD",
            ]),
        .testTarget(
            name: "RxSVProgressHUDTests",
            dependencies: ["RxSVProgressHUD"]),
    ])
