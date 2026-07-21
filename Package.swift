// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MadfunSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "MadfunSDK",
            targets: ["MadfunSDKWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.3"),
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", from: "2.0.3"),
        .package(url: "https://github.com/onesdkspm/BTWebViewKit.git", from: "2.0.3"),
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "2.0.3"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "MadfunSDKWrapper",
            dependencies: [
                .byName(name: "AppAuth"),
                .byName(name: "AppsFlyerLib"),
                .byName(name: "FBAEMKit"),
                .byName(name: "FBLPromises"),
                .byName(name: "FBSDKCoreKit_Basics"),
                .byName(name: "FBSDKCoreKit"),
                .byName(name: "FBSDKLoginKit"),
                .byName(name: "FBSDKShareKit"),
                .byName(name: "FirebaseAnalytics"),
                .byName(name: "FirebaseCore"),
                .byName(name: "FirebaseCoreInternal"),
                .byName(name: "FirebaseInstallations"),
                .byName(name: "FirebaseMessaging"),
                .byName(name: "FMDB"),
                .byName(name: "GoogleAppMeasurement"),
                .byName(name: "GoogleAppMeasurementIdentitySupport"),
                .byName(name: "GoogleDataTransport"),
                .byName(name: "GoogleSignIn"),
                .byName(name: "GoogleUtilities"),
                .byName(name: "GTMAppAuth"),
                .byName(name: "GTMSessionFetcher"),
                .byName(name: "KakaoCommon"),
                .byName(name: "KakaoLink"),
                .byName(name: "KakaoMessageTemplate"),
                .byName(name: "KakaoOpenSDK"),
                .byName(name: "Masonry"),
                .byName(name: "nanopb"),
                .byName(name: "NaverThirdPartyLogin"),
                .byName(name: "onesdk_ios_ubee"),
                .byName(name: "onesdk_ios_ubkakao"),
                .byName(name: "onesdk_ios_ubwechat"),
                .byName(name: "OnesdkBaitianFramework"),
                .byName(name: "OnesdkFireBaseCloudMessage"),
                .byName(name: "OneSDKIAPHelperFramework"),
                .byName(name: "OnesdkSeacommon"),
                .byName(name: "OtherPartySDKFramework"),
                .byName(name: "UnityUbeejoyManager"),
                .product(name: "UnityBridge", package: "UnityBridge"),
                .product(name: "BTLoganManager", package: "BTLoganManager"),
                .product(name: "BTWebViewKit", package: "BTWebViewKit"),
                .product(name: "BTSDKUIKitCore", package: "BTSDKUIKitCore"),
            ],
            path: "MadfunSDKWrapper",
            linkerSettings: [
                // iOS 系统框架
                .linkedFramework("UIKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("OpenAL"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreText"),
                .linkedFramework("MediaToolbox"),
                .linkedFramework("AdSupport"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("Photos"),
                .linkedFramework("StoreKit"),
                .linkedFramework("WebKit"),
                .linkedFramework("SafariServices"),
                .linkedFramework("GameKit"),
                .linkedFramework("Accelerate"),
                .linkedFramework("Network"),
                .linkedFramework("AdServices"),
                
                // 系统库
                .linkedLibrary("sqlite3"),
                .linkedLibrary("c++"),
                .linkedLibrary("icucore"),
                .linkedLibrary("resolv"),
                .linkedLibrary("z"),
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "AppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/AppAuth.xcframework.zip",
            checksum: "b5947b668f8a3eb5fa066ccc43d26b00daf2757e2a00393370800e90b365684a"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/AppsFlyerLib.xcframework.zip",
            checksum: "526c52a5157481d89860de20e6f4591e9d47a9d80622ce184c48bd2b594d3c13"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FBAEMKit.xcframework.zip",
            checksum: "ed26014d2b2d0aade9a284b5ffdda43bd13abfba1f9205eccc96b3ba4f82c834"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FBLPromises.xcframework.zip",
            checksum: "bdbed4ff8ec428512b82b455a94aaf98196b7aaa8f0492291bdbc2f937020541"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "356bb8786a80d57c427cd6d91fa779abdbbe4899f6ce6912e538c45421ce8259"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FBSDKCoreKit.xcframework.zip",
            checksum: "fcaa7f9efcccb655fa37d74501bebe301aeec2fe49c13ba2d966d8f7ff85095e"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FBSDKLoginKit.xcframework.zip",
            checksum: "77d7f0f2842f727e59112a731b98b3de80ba7664825470e4ac1dafc71c2ebf81"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FBSDKShareKit.xcframework.zip",
            checksum: "96e0d546c03a270790556679732e3435f3ef902bc1be95d49be21645a2e036c8"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FirebaseAnalytics.xcframework.zip",
            checksum: "d0f231e757be2ee3f83e9dd3937e52d0850010be6988662759e4bd6d9806361d"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FirebaseCore.xcframework.zip",
            checksum: "e8db4ac3d1a5cc600b9176d630393f511e31c42afb8dafa42835d895d94b3f6b"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FirebaseCoreInternal.xcframework.zip",
            checksum: "4980c985f12a265c73466fc25381b66c1333e497eed9247677bd1e8121cba7b2"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FirebaseInstallations.xcframework.zip",
            checksum: "485e027a8cb65b7b5d60bd32a899601987e327b977fb82c4356799da8649173c"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FirebaseMessaging.xcframework.zip",
            checksum: "0bdd6a6d45f0cb9e6bc0afdcb3b47c3c4790be6a48000287b6275929fea75a4a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/FMDB.xcframework.zip",
            checksum: "2f32019db7e7930b8f19917581fc4d1b45390ebd71fccfafccd403dc8d3e0000"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/GoogleAppMeasurement.xcframework.zip",
            checksum: "29778800ea68b2da3258c1744f0a83bc609a1cae9cc914a113409fdf8601d3e7"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "c405c54e4097827c2ccdcd0c8903929a8ebb9d91724ff5d73dfd331f7c8ff0f3"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/GoogleDataTransport.xcframework.zip",
            checksum: "2734c43f91ee71b97e4fef397cbd1bfb1c7da94e1b2f688d37815e4128ecd5fb"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/GoogleSignIn.xcframework.zip",
            checksum: "bc3080dd9e06d7c8b3c6293664ce41e5fc9c189de6faf5f87b481f39ef5d325e"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/GoogleUtilities.xcframework.zip",
            checksum: "5cc78bd29a15441f5e3a834a44f45965cab61b365566f0b0cce5aa5679daf19d"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/GTMAppAuth.xcframework.zip",
            checksum: "c5c8eeeacba3d81e6eb1cf2f5c0c7a9ca6b75074e6ed03d40a7c59b65197862e"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/GTMSessionFetcher.xcframework.zip",
            checksum: "819dcfa97b7274230466aa1f76df286cffe3ee22002842bfd3d3dedffc53974f"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/KakaoCommon.xcframework.zip",
            checksum: "51ce88d7baf1cafa2256bfbc0fcf5d5fee0a2d41c67504d6524d29085a77276f"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/KakaoLink.xcframework.zip",
            checksum: "0054e989ed4544937eb7b603798e8de5f81c0bfbac1cc056f8923582728bde14"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/KakaoMessageTemplate.xcframework.zip",
            checksum: "3ccae426fe8bb37b018205b6cde7fff1c13bbab8073190283a2adccd6f53733e"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/KakaoOpenSDK.xcframework.zip",
            checksum: "1cd791fa173bc0a74f0fe6fe67ab85f1c9385bfe5dc1ba15aa2d40d45265549c"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/Masonry.xcframework.zip",
            checksum: "601da2a3046f1c376eacb69e4657f36ae5f8263aefa49b8cb9d2d1f26e44ffea"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/nanopb.xcframework.zip",
            checksum: "fc4210b323a37435dd10d41ad5a4947fb76a884cf44ace61e656e404ced00ade"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/NaverThirdPartyLogin.xcframework.zip",
            checksum: "5c503d8e925ac68abc2b38c03a4c691d3859ad8d7d6b56cf73d967d467e1cc40"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/onesdk_ios_ubee.xcframework.zip",
            checksum: "fe0fda7abdebefaf2e1c1f09dcf1b7516d4c3e5bec7d0cc5ee1784af44a06cc8"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "b5e33518821bb2bb32bf54d7372dfa660c90ec87edc365b837bcc65c926e610a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "c6bac4938c3f43beb4c3e636b05d07c49d2f3ef1160f1eae55bb220e3a46fdc1"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/OnesdkBaitianFramework.xcframework.zip",
            checksum: "836489c7733c0aa760bdb54ad2bc9869865b3947ba40838cc61e0efec51dd108"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "b44c055816ac20ea505017256515f1cefa037be9a5b8c8ed7bd92ee9921e0df3"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b35d8415d290365b20238bac074b28e0cdb983fdefd7c3aca4db04b19264349e"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/OnesdkSeacommon.xcframework.zip",
            checksum: "7bae48fc4b3d90ca3313eaa807f4843b33ac6dac745f6c8cc8cb6f86edb72c89"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/OtherPartySDKFramework.xcframework.zip",
            checksum: "af275916b40f2f13d3bd54a480f838c6a3a19f0b67c750a39c84cdbe2e3140fe"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1489138/UnityUbeejoyManager.xcframework.zip",
            checksum: "cf95ffa7f50aeb4f8768664f3fb232bb5f55d7441dba9c34ae6fd4cd2f235acf"
        )
    ]
)
