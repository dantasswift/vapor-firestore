// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporFirestore",
    products: [
        .library(name: "VaporFirestore", targets: ["VaporFirestore"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "4.102.1"),
        .package(url: "https://github.com/vapor/jwt.git", from: "4.2.2"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0")
    ],
    targets: [
        .target(name: "VaporFirestore", dependencies: ["Vapor", "JWT"]),
        .testTarget(name: "VaporFirestoreTests", dependencies: ["VaporFirestore", "Nimble"])
    ]
)

