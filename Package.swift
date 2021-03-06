// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "IAM",
    platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "IAM", targets: ["IAM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/soto-project/soto-core.git", .upToNextMinor(from: "4.7.0"))
    ],
    targets: [
        .target(name: "IAM", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/IAM"),
    ]
)
