// swift-tools-version:5.3
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
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.1.0")),
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
