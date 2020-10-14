// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "RIBs",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(name: "RIBs", targets: ["RIBs"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.0.0-rc.1")),
    ],
    targets: [
        .target(
            name: "RIBs",
            dependencies: ["RxSwift", .product(name: "RxRelay", package: "RxSwift")],
            path: "ios/RIBs"
        ),
        .testTarget(
            name: "RIBsTests",
            dependencies: ["RIBs"],
            path: "ios/RIBsTests"
        ),
    ]
)
