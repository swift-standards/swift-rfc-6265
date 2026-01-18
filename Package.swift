// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "swift-rfc-6265",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26)
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
        )
    ],
    swiftLanguageModes: [.v6]
)

extension String {
    var tests: Self { self + " Tests" }
    var foundation: Self { self + " Foundation" }
}

for target in package.targets where ![.system, .binary, .plugin].contains(target.type) {
    let existing = target.swiftSettings ?? []
    target.swiftSettings = existing + [
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility")
    ]
}
