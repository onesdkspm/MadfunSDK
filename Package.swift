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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/AppAuth.xcframework.zip",
            checksum: "0c706b649472332fadbb74c69d7e69267fcf0c8aaa2ea75484708bfb7fb90ce7"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/AppsFlyerLib.xcframework.zip",
            checksum: "3c3a527876453ed99ee708110eb3b7b8d1ed918369f69c495be1e6ffab880cef"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FBAEMKit.xcframework.zip",
            checksum: "c20f209d9e99b926cf2d0ec1aaa7451c59695f4360e049956701d840f87dbe10"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FBLPromises.xcframework.zip",
            checksum: "6c2b2d1ff7b2051b2ebd3d22ff412029ce98fe99fe03f64adc6f7c90a036a92b"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "c518bddbb8358330f819ab62fd5884e579f817bc7d33f7dbbf3f6eae84b2be41"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FBSDKCoreKit.xcframework.zip",
            checksum: "e2a0b0f9a3345473da237a3c820fd13f69ae70dd205ac74662187697aa733b65"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FBSDKLoginKit.xcframework.zip",
            checksum: "416b6040f6f250fddd1a4a021f54ac1e401e9a73bebd947545d109dd555a5183"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FBSDKShareKit.xcframework.zip",
            checksum: "bfbc46fe88514671e548ced83f5353334a290bb6a28a30da52625315dd6b84d3"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FirebaseAnalytics.xcframework.zip",
            checksum: "d2fd009b786a0b80b6f94a0ed814b4cc07d94a8b7c756321579e80e7bd2799d1"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FirebaseCore.xcframework.zip",
            checksum: "193b56499517508890be8b57da8b0d44469b050000b8c43a0a1121628a76d78a"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FirebaseCoreInternal.xcframework.zip",
            checksum: "dc29be3ceeb2f90f09ca0810d97431d616715e1cd83940ce2612b2842970dc3a"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FirebaseInstallations.xcframework.zip",
            checksum: "99e6ab14674566a2d547638beba616228175dd3c574ad0a2f60ffbd6e088c8c0"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FirebaseMessaging.xcframework.zip",
            checksum: "f1ec8291ecb3bd79b6c052e42dacd50a512a840d964892b5557fc9beb6b3aaf2"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/FMDB.xcframework.zip",
            checksum: "147ff942a8d174511803848c283ade65951b9c93de9ffe5b9be1342a6d24a396"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/GoogleAppMeasurement.xcframework.zip",
            checksum: "542158a0b7b9c18502ca105316da3b4aad018af83dadfd3757a554f50b145272"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "27a93d9db9f1a78651bd011adfaed5ca2fd9196323cd3c9b2964f8d64bf27613"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/GoogleDataTransport.xcframework.zip",
            checksum: "cfa7454222afd41696baa7a16ab7f6c4e0391f1002653db3fa35e4601759b9b4"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/GoogleSignIn.xcframework.zip",
            checksum: "b4728903479cfd17342f06a4a546e406cd11416ded25de1103c36c3750678397"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/GoogleUtilities.xcframework.zip",
            checksum: "8f22fc106d6125819660479b47c13749bfcd6f5f45863746ca348938e0e6d1e6"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/GTMAppAuth.xcframework.zip",
            checksum: "54695a39a96a28565f56ef359365cc6694b6f08f707ac14e44288aed6cbcbaf4"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/GTMSessionFetcher.xcframework.zip",
            checksum: "77fd50edb0d525be0b5a9e10c90677ae8dad48aeb23edbc3f6dcfb84a5659bbf"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/KakaoCommon.xcframework.zip",
            checksum: "518eec8ea9a14b604eb7b3c21b1bcf007cf72d10497124695fb209eda3e23ac6"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/KakaoLink.xcframework.zip",
            checksum: "21a2ca97ffae1da9e181af4006899bb0f783b58413bb01ec53e005199fe90adf"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/KakaoMessageTemplate.xcframework.zip",
            checksum: "ad7e5c863288d84f4c6baed6eb6abf1e321bce80176c2f9a26a729aa9d443544"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/KakaoOpenSDK.xcframework.zip",
            checksum: "e54bf9c42d56996b7d652c00c9ccfede9a7e28a1586a1d09abef99da2b1e6449"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/Masonry.xcframework.zip",
            checksum: "4bc6d5d7874811d3ae96c6c1a23c62567b9c709e514706a7082b1aa19d6da523"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/nanopb.xcframework.zip",
            checksum: "6aa675fed5323ed25833135cb8c8a93252f12468f25b3f5657edf661502afbdc"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/NaverThirdPartyLogin.xcframework.zip",
            checksum: "0af7cb3284b24f6b640b657d7a1ccd352c56a84cea26ae50be3f00afec0c9d9e"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/onesdk_ios_ubee.xcframework.zip",
            checksum: "4fa35fb581780bfa01da2f0b37c4ffd699cd69b6f10a959fc865d15146501dc0"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "ad00c3064d252020d844b5a70919c2dad850eed6de271a33e7746fed55f75a84"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "18387a097dfc48cada8b602d2e278e0848fa72282c388c0e0c88f5a9af598f0d"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/OnesdkBaitianFramework.xcframework.zip",
            checksum: "f0099fe4099b174aa6bf7e0d22baf044d620e8a53e04df7e09cf9051cde71d50"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "18bd384af079e58bbf4954f029b93ded0cfece2d1a1a7338ff3ac2ff208e998c"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "e3f2d0ddfff66218dbd95df331cbf0112be0d9c0010060765adfcce6c1c7b81a"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/OnesdkSeacommon.xcframework.zip",
            checksum: "3d43d226ec143e4e47026da98e0b7389b8fdff6bddc02cd5100cb062fb443867"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/OtherPartySDKFramework.xcframework.zip",
            checksum: "a929e21a432135947f7defe2261f3825604067a75888a5e3ae3ee79efdf773f8"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1490708/UnityUbeejoyManager.xcframework.zip",
            checksum: "be9cab2b5e6cc22b8e22f177486280db244f2f93f3ff573bba9fec0086fbac10"
        )
    ]
)
