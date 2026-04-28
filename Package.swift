// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YYText",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "YYText",
            targets: ["YYText"]
        )
    ],
    targets: [
        .target(
            name: "YYText",
            path: "Source",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Component"),
                .headerSearchPath("String"),
                .headerSearchPath("Utility"),
                .headerSearchPath("include")
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreText"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MobileCoreServices")
            ]
        )
    ]
)
