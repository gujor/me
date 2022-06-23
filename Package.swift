// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "me",
  platforms: [.macOS(.v12)],
  products: [
    .library(name: "Content", targets: ["Content"]),
    .library(name: "Document", targets: ["Document"]),
    .executable(name: "Generate", targets: ["Generate"]),
    .library(name: "Project", targets: ["Project"]),
    .library(name: "Resume", targets: ["Resume"]),
  ],
  dependencies: [
    // Commented out for now as there are issues with Xcode 14 beta
    //.package(url: "https://github.com/gujor/swift-format-plugin", branch: "main"),
  ],
  targets: [
    .target(
      name: "Content",
      dependencies: [
        "Document",
        "Project",
        "Resume",
      ]
    ),
    .target(
      name: "Document",
      dependencies: []
    ),
    .executableTarget(
      name: "Generate",
      dependencies: [
        "Content",
        "Document",
        "Resume",
      ]
    ),
    .target(
      name: "Project",
      dependencies: [
        "Document",
      ]
    ),
    .target(
      name: "Resume",
      dependencies: [
        "Document",
        "Project",
      ]
    ),
  ]
)
