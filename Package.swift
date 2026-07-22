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
                .byName(name: "AppCheckCore"),
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
                .byName(name: "GoogleAdsOnDeviceConversion"),
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
                .byName(name: "Promises"),
                .byName(name: "RecaptchaInterop"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/AppAuth.xcframework.zip",
            checksum: "2f90f62c279f32ef46cfe274cd11767bb2b051056ef8805e1653d4fdc684b244"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/AppCheckCore.xcframework.zip",
            checksum: "d00cdcc19f7472d6acef327aec57486d69eb6b8ae52b08ea18eab6bad82d2792"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/AppsFlyerLib.xcframework.zip",
            checksum: "ce09d52a5969d4952ae08eeda6842136bf357ebfef752661d162c13ea4334cdd"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FBAEMKit.xcframework.zip",
            checksum: "6b2ec0aee8c065721f2ed8a31dda43a1e5303e8dc610c5ad8ea8eb876bbade58"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FBLPromises.xcframework.zip",
            checksum: "0658415e02579f348f6c40103aae3cb195a0a9dc5d8370df4b8c2cba4a5a5fb9"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "2a4001d426eda5f153b89e6da22322b2ed5aa52f03002dd4e39d28277cd8b528"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FBSDKCoreKit.xcframework.zip",
            checksum: "31916d0601e28fa2083e7b6d3d3a5c957566754f81f6eae9044aec0128c29fa4"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FBSDKLoginKit.xcframework.zip",
            checksum: "7a55df62b3c00db82869e57fd7c1cd738cb766e450c7023868e495f5c0dded40"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FBSDKShareKit.xcframework.zip",
            checksum: "b9416df0c23fbcad624035ddd0f3608aefea1ac87bd6eee2cb6d999463334eaf"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FirebaseAnalytics.xcframework.zip",
            checksum: "da017839c741f9188ae23f57ab289a77cec064ff734f97794952b4b97665f164"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FirebaseCore.xcframework.zip",
            checksum: "dfe684e699e94290c3c391ea8063b2b1948b99f170c1eab3c4f60a55d9ba9a78"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FirebaseCoreInternal.xcframework.zip",
            checksum: "3480040b2acfda37bf9ac996882fbb096025b9e47b61bde3a7f8665ec41a95d0"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FirebaseInstallations.xcframework.zip",
            checksum: "5dc3e24a308394dc3ebd454cdb80dcb97a1d587b5b15d84f0a332487f9d3cab6"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FirebaseMessaging.xcframework.zip",
            checksum: "8f2175f425512a5453862f7ca4da70e7d8fc40189b9e651cbe2c1a4207089720"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/FMDB.xcframework.zip",
            checksum: "3a635d9e81e2ba435b4d8b69a9a89947cf05f87360988392a42227b155c45fa5"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "b34506ac8790f022389a832ee7191be80f7702d2ba37e09b8b3da84146341043"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/GoogleAppMeasurement.xcframework.zip",
            checksum: "eeb55c848e5044ea066c1002f3dbc57d95c00c098e80f80406f6d978956b7266"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "d88064edbc9dbdd6af46a8908538e20c943bc7401b3f0c607012372524bac7ea"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/GoogleDataTransport.xcframework.zip",
            checksum: "5373266dc1e306a56870099d374f9fc499edb423c278aeb3722ad20d0c7eb919"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/GoogleSignIn.xcframework.zip",
            checksum: "4a2bb5422335c6a3ea09c02b468457e97e9811ccd0f2ee8653b4afe2ef80b899"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/GoogleUtilities.xcframework.zip",
            checksum: "2c2cec5cf89221b6c10f6c42d23a082ed90f52c0a6d1e7054c8064928382a6bc"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/GTMAppAuth.xcframework.zip",
            checksum: "5f31efc43182c683f1bccaf088d7a1041b4e7a4e7a580e66e45c8b752982eec6"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/GTMSessionFetcher.xcframework.zip",
            checksum: "1dd1b48a8a960b75e84789495a524d617066f4ac542e4bf9d3e799958a41b0d3"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/KakaoCommon.xcframework.zip",
            checksum: "7d580d073a2452870b1c8e4071eb8dc6adc1e29db789c409a2d2184411f43c46"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/KakaoLink.xcframework.zip",
            checksum: "9c8cee9907e3a066e7d7a4e8793f6f19516b1771a19aa1ab05462e24586a1ebe"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/KakaoMessageTemplate.xcframework.zip",
            checksum: "4df941d824c14771007ec6681fdcd0a2b8127df0a8d943d8ac92e5e0e8c27b31"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/KakaoOpenSDK.xcframework.zip",
            checksum: "e542ae49a88dbcdcc6ef2a67e3078577b205c0c477592b3046c620e79e2f44b9"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/Masonry.xcframework.zip",
            checksum: "68a8075d6fba70ed21416a4b1713673d1b7211da105e9d53723cf9fa1a018e1c"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/nanopb.xcframework.zip",
            checksum: "5c705f8e2ec3b8a1fabef0eda75ec0134288185cc58db291c8dc15acd787f714"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/NaverThirdPartyLogin.xcframework.zip",
            checksum: "27279d20402408e6027280410dd13d1faa0381d57242c5887425b37708e65fc2"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/onesdk_ios_ubee.xcframework.zip",
            checksum: "80fd561902c59e7d1c90326d0c6ea8af8f43adbe0971be22914dca077494bfce"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "e7e29b6274c7a86730d4ab1b5d271ec18bea294ae169b3dcfbe6b073ac4dce48"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2f4fcd7547905717e8c26f7cd3ea6e0deec0e952f44a2dad1fcd2d99febae644"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/OnesdkBaitianFramework.xcframework.zip",
            checksum: "f126fca02524358f768f1d4e3eebb7fa4454b63c91f31b0fb08854ebbb2e6260"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "45faf6a8b9383b00e8fc47e7f5e5eb1f783eb40eadb2d79525d1d136bd556020"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "349658091a48f8db0ab8732894cb725c5e177964fc8095ff1a5885705fc66fa5"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/OnesdkSeacommon.xcframework.zip",
            checksum: "2fed1dbfb59f7343423daeae89c09fdad1449cbc28731c4f17322cfb4646512e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/OtherPartySDKFramework.xcframework.zip",
            checksum: "d43b78069170466b85466ca937aebc2600ea685e30e307c0956e2e4aa5ce40b3"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/Promises.xcframework.zip",
            checksum: "905d4f76c50d09b58ec6a4587b4de597a3851a3be50d2506faeea2db56032cf0"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/RecaptchaInterop.xcframework.zip",
            checksum: "590acd0ce02a743931ce4cdaa7e6eedc01521797d5500097ba13196f751127f8"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1490678/UnityUbeejoyManager.xcframework.zip",
            checksum: "46c0b1b7c5e6c47b642a86e6e80fac4de791bc23746bca3fd060662fdb7f069a"
        )
    ]
)
