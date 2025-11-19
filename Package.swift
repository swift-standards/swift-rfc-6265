// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "swift-rfc-6265",
    platforms: [
        .macOS(.v15),
        .iOS(.v18),
        .tvOS(.v18),
        .watchOS(.v11)
    ],
    products: [
        .library(
            name: "RFC 6265",
            targets: ["RFC 6265"]
        )
    ],
    targets: [
        .target(
            name: "RFC 6265"
        ),
        .testTarget(
            name: "RFC 6265 Tests",
            dependencies: ["RFC 6265"]
        )
    ]
)

for target in package.targets {
    target.swiftSettings?.append(
        contentsOf: [
            .enableUpcomingFeature("MemberImportVisibility")
        ]
    )
}
