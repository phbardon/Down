// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Down",
    platforms: [
        .macOS("10.11"),
        .iOS("9.0"),
        .tvOS("9.0")
    ],
    products: [
        .library(
            name: "Down",
            targets: ["Down"]
        )
    ],
  dependencies: [
    .package(url: "https://github.com/stackotter/swift-cmark-gfm", from: "1.0.2")
  ],
    targets: [
    .target(
      name: "Down",
      dependencies: [
        .product(name: "CMarkGFM", package: "swift-cmark-gfm")
      ])
    ],
    swiftLanguageVersions: [.v5]
)
