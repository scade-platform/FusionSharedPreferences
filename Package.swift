// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "FusionUserSharedPrefs",
    platforms: [.macOS(.v10_14), .iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FusionUserSharedPrefs",
            targets: ["FusionUserSharedPrefs"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "Android", url: "https://github.com/scade-platform/swift-android.git", .branch("android/24"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FusionUserSharedPrefs",
            dependencies: [
                .target(name: "FusionUserSharedPrefs_Common"),
                .target(name: "FusionUserSharedPrefs_Apple", condition: .when(platforms: [.iOS, .macOS])),
                .target(name: "FusionUserSharedPrefs_Android", condition: .when(platforms: [.android])),
            ]),
        .target(
            name: "FusionUserSharedPrefs_Common"
        ),
        .target(
            name: "FusionUserSharedPrefs_Apple",
            dependencies: [
                .target(name: "FusionUserSharedPrefs_Common"),
            ]
        ),
        .target(
            name: "FusionUserSharedPrefs_Android",
            dependencies: [
                .target(name: "FusionUserSharedPrefs_Common"),
                .product(name: "Android", package: "Android", condition: .when(platforms: [.android])),
                .product(name: "AndroidOS", package: "Android", condition: .when(platforms: [.android])),
                .product(name: "AndroidContent", package: "Android", condition: .when(platforms: [.android]))
            ],
            resources: [.copy("Generated/FusionUserSharedPrefs_Android.java")]
        ),
        .testTarget(
            name: "FusionUserSharedPrefsTests",
            dependencies: ["FusionUserSharedPrefs"]),
    ]
)
