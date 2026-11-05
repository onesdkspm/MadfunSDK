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
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", from: "2.0.4"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/AppAuth.xcframework.zip",
            checksum: "7e2fbe1be4071b07346c23657bd44a99a62e4009b32a579661462366252db227"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/AppCheckCore.xcframework.zip",
            checksum: "a0df864920a074bf0a49cc2cd8db2e7fe8ae0f4cea8242087c13f6c8a974116e"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/AppsFlyerLib.xcframework.zip",
            checksum: "bf1fca2bb4bb3efc940bd0b8d717fe17f64357a56f0e93d0bbe36dbf860e8b36"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FBAEMKit.xcframework.zip",
            checksum: "c575cc5cc3bdd68e5fd1956d39a92b155a12ca469c498e93abb68a1921f46d4f"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FBLPromises.xcframework.zip",
            checksum: "17b42c6cffbb4d8e7b37d64a7dce61d02722e56138eebe63aeeee3e5b27d748e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "5e3fd4c529098d5141fba74706222cc108440a6b7cfdf863274614998891d118"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FBSDKCoreKit.xcframework.zip",
            checksum: "167bf6493a1ec5c0f7b702988c342a7dec6334fbaf64aba358401f7fb00a8d3d"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FBSDKLoginKit.xcframework.zip",
            checksum: "835d026986b15abc8524606874635970a13da93342efa43df307ffc2493da22d"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FBSDKShareKit.xcframework.zip",
            checksum: "df4d544156d1424bcd22a9f5e341ecd5f695b5716935c3309a37f2e3eeb526d3"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FirebaseAnalytics.xcframework.zip",
            checksum: "ed1f3cd1988adbdf7ef242d388df66417a3d9b4f3f30f462702bddff3dee638e"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FirebaseCore.xcframework.zip",
            checksum: "7c3c814f71b1539c3ac9f0f990afd669290810c5d517ba7ae154d0657c51cf1f"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FirebaseCoreInternal.xcframework.zip",
            checksum: "3301e7052d21fdfd7d63c482db8dda72a71fd97bde907a44428dff9115a8d032"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FirebaseInstallations.xcframework.zip",
            checksum: "4572af058807922f6669ad4160669dfb9e5e7cd1b89d9ac22c802ae33e1779bc"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FirebaseMessaging.xcframework.zip",
            checksum: "6c86936a353d15834e8963e48d44b71789433ebdfd8c10264bdfbd1bdd68f941"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/FMDB.xcframework.zip",
            checksum: "c8b6f8385da7f33551c291f71e70a4191c89b037b29bb3e64907a952814f0c86"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "cbe4cd587e0b326d99154541b7b3bcf4100d00a957ac6bed6eaf8a0ee5426b45"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/GoogleAppMeasurement.xcframework.zip",
            checksum: "66618aab1c80da151e2e5c9f7f4a12371f6cf4325195b2d17bc2624c62e6d520"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "e1dd011e1df1b7382ffe40aff9987de0710b2b07317c314f59f254c599ea17c9"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/GoogleDataTransport.xcframework.zip",
            checksum: "c65404608be6e9e2f1dad5ab9e953d0679de5d94d60591509ad62dae281c68f3"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/GoogleSignIn.xcframework.zip",
            checksum: "b293888a472c942ea8ec21a88905ac1abfc45f669aadad5281a095013cddbe6b"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/GoogleUtilities.xcframework.zip",
            checksum: "2e5938f990f3cfffe8cba49a094985ab7c455c33ea9444332222e86f9c095818"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/GTMAppAuth.xcframework.zip",
            checksum: "68b1a25932d269fd812f7810f30df7fb884a790c62ba0786d8361581f6dd8798"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/GTMSessionFetcher.xcframework.zip",
            checksum: "e16add914140b2c488aa40c439f50c926ab68f0e525f8aab0106d928564d645c"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/KakaoCommon.xcframework.zip",
            checksum: "3484008aaa639d13b7a68c7d449e57d11f748495e4de18c9cc10f5559d9e49dc"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/KakaoLink.xcframework.zip",
            checksum: "9a5d7b9727dc405ad81d926552364705ff17f7cbf1692870a27a943c69c02a51"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/KakaoMessageTemplate.xcframework.zip",
            checksum: "910d1edabd047b057d9ae6e2d90b088673ed5c01591b3cd9ac82c72a58fe5ca4"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/KakaoOpenSDK.xcframework.zip",
            checksum: "b0799549240430b7ab756c608ca8e9715a43debc9ecf6cbe3979dbdbb235a24a"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/Masonry.xcframework.zip",
            checksum: "dbb9fc6cd9674f34b7999745404816964b48d3f6f9566fecde16cde82ef6fc75"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/nanopb.xcframework.zip",
            checksum: "46482bf766475f5e601a9de83dce9fae6d2ed80b50a4d42f41e691e8457bf444"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/NaverThirdPartyLogin.xcframework.zip",
            checksum: "84fe7577a1feb1ccf87f0df22e8b1c0a14585e62ba8a1a96107494698ae35171"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/onesdk_ios_ubee.xcframework.zip",
            checksum: "bd879bd1baec7920ab2f9d268dd9d9222482aa87f2788436d256ecea4728163a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "b4f09b675ece5a5b4376975eb29c875c907a76bbb5bcdad5f6a9257c7115c8a7"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "87ab5ee74ef25c0c746e68a6431a7750bbaa42fcf136d8b92386f36ce859e6a2"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/OnesdkBaitianFramework.xcframework.zip",
            checksum: "87897c85929085214eefdef84a48f49601572db7cc10de5a149ab5a51ece168f"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "37cb6e336f6390cb7c7873a8ee8e639774eb8f6675a466baedadc78ff851d353"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "f02df77fa03bd82903e16b675cefdf49ded16e59097351e8a32ec92931677e1c"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/OnesdkSeacommon.xcframework.zip",
            checksum: "aed4a570d1f54d6323b93ad6a281f17fccfdd3c17c0d4a5d9ed7854dd4face11"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/OtherPartySDKFramework.xcframework.zip",
            checksum: "ee723d33796a91d1b879e7e0d3528872b726ec7d315a6daebb0af2f730509c9a"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/Promises.xcframework.zip",
            checksum: "0ac1addc29f7c8f063039e9a97c337f9b992b94de3fd044b4ae13b0fa870e477"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/RecaptchaInterop.xcframework.zip",
            checksum: "14faec22b2859e15aca39a9623a812c614b01144754116fcc549a00b73ab579f"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1560700/UnityUbeejoyManager.xcframework.zip",
            checksum: "41d8899863244fd2548834dee294fc23b6f91c7d4677bbf4475217c83d9b16f7"
        )
    ]
)
