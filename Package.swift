// swift-tools-version:5.1
import PackageDescription

let buildTests = false

let package = Package(
        name: "SpringMenu",
        platforms: [
            .macOS(.v10_14), .iOS(.v13), .tvOS(.v13)
        ],
        products: [
            .library(name: "SpringMenu", targets: ["SpringMenu"])
        ],
        dependencies: [],
        targets: [
            .target(
                    name: "SpringMenu",
                    dependencies: [],
                    path: "Sources",
                    exclude: ["Tests", "Examples"])
        ]
)
