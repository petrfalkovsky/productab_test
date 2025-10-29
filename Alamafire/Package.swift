// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YourPackage",
    products: [
        .library(
            name: "YourPackage",
            type: .static, // Указываем статическую библиотеку
            targets: ["YourPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.0")
    ],
    targets: [
        .target(
            name: "YourPackage",
            dependencies: ["Alamofire"],
            linkerSettings: [
                .linkedFramework("CFNetwork"),
                .linkedFramework("Security")
            ]
        )
    ]
)
