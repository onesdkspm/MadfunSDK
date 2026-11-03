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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/AppAuth.xcframework.zip",
            checksum: "dca99bd605abe44fd924fd9f9e9a2d30f40d8685274eb8e9365c51cc7a7f4888"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/AppCheckCore.xcframework.zip",
            checksum: "da77bab4778df65943a07f6702714ecd02b24c5d43ce964f3810798eceb0603b"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/AppsFlyerLib.xcframework.zip",
            checksum: "35611f7623c12187ed17346084de01a9246dd9dea172e115d6ebab905edf6be2"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FBAEMKit.xcframework.zip",
            checksum: "6436211849ff7458b9ca5d2237adb3d61857ab39f46d8c77c10b2a71784d082b"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FBLPromises.xcframework.zip",
            checksum: "aa580214db1b3627e74b382a40f0170fe85216131fa332bffeb14d030cbf7f22"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "55a378e4d22355bf9b5dbcca88875abe851c6e6d955eea41a8bb6e524d17fde8"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FBSDKCoreKit.xcframework.zip",
            checksum: "ce60eb26cd78a5cb14212247d7cf759469e22399570633715230e0a4dfc96f67"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FBSDKLoginKit.xcframework.zip",
            checksum: "1a3977d95d6a42eb220784dcd24d64a08d336d7d75181a39c80dde40094d2781"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FBSDKShareKit.xcframework.zip",
            checksum: "f331f246663f1460d7424a774aecbbfbfc8815275297fa5f572395630b415bd2"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FirebaseAnalytics.xcframework.zip",
            checksum: "6ff507525526a3b32e0ad1382c3f50dfb918adb65f7d944c33cd49371a73ff57"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FirebaseCore.xcframework.zip",
            checksum: "3782237a0b3c891d7b9636b59f57387653213400f554061a49110062b68ff6bf"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FirebaseCoreInternal.xcframework.zip",
            checksum: "d57297e0ae5625e1dc0acd427731307d219fa2a3e7506bc0f051e07463c9eac1"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FirebaseInstallations.xcframework.zip",
            checksum: "b0d20c8019d82221efe770ba42648c5f0d36c7599fd10dbd81854c34d08f9534"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FirebaseMessaging.xcframework.zip",
            checksum: "cb80cb28179a9012e977c23f083293a9bef578a041aaee5fda7753ef05732cac"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/FMDB.xcframework.zip",
            checksum: "1b149d98ae86bab606d16e648a372ca71d2fa8cb0adfcb9f7add4db1dd7e4e5f"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "c50de639fbdb588d113d249aa62dc7d18dff6da6a18c92865ee3ca25fb9ada4b"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/GoogleAppMeasurement.xcframework.zip",
            checksum: "fd99bf582445ecf67ef236b46074a6dda689edb15ebbb6a5bf388cc177e16212"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "85170a1a4e9c7093515b164c08433b79213c7b809ce0c692ccfd8512785ed384"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/GoogleDataTransport.xcframework.zip",
            checksum: "70ba434ca6435e8b86423eb3e36d5276108d3fb57987477f645e1556bfafb6bb"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/GoogleSignIn.xcframework.zip",
            checksum: "352ea8c07f900757ce25551e2ad614e20e703e5de9fe4ffa60c9796ea1615def"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/GoogleUtilities.xcframework.zip",
            checksum: "af1d52ec5dee812bbd0ea42853ec34b6cbc54c27cf392a0f33e89f67ad282db2"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/GTMAppAuth.xcframework.zip",
            checksum: "c2ad95ea95eaa9ae7db66adcdf9c0ad328299718b456167be120e1f27a590500"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/GTMSessionFetcher.xcframework.zip",
            checksum: "c6f6327daeb182ee00b7885f88bf6e60ee0be39027a1e3fb09323d7b710cf8ca"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/KakaoCommon.xcframework.zip",
            checksum: "13d138090267c4e1fd9d1376cbfa53704d2184d2e9b9f32009764b2bb52eecc3"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/KakaoLink.xcframework.zip",
            checksum: "202929c71b9fc5293acfee41bd8bfad509601074215abe8d8ad783733a999e3d"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/KakaoMessageTemplate.xcframework.zip",
            checksum: "bce48a0cd0f186306d095f6790c84ce312764ba2beb8fd1b15cedc45ea4f9bdc"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/KakaoOpenSDK.xcframework.zip",
            checksum: "e2be46cb5990c1dabae19278b9b854cf8feb69c6f904296073f92509720bd69f"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/Masonry.xcframework.zip",
            checksum: "7e70e9b0f154b97560b238986127e9431f5b7720cbb48143b31c5a634bc1ef69"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/nanopb.xcframework.zip",
            checksum: "446c4a42cd7efb18cb12f3f3ffc6e272f79f45fe13ef36ec519ea22a0f0bfd75"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/NaverThirdPartyLogin.xcframework.zip",
            checksum: "3dbd053dd98a9f2d27055aefd04efa76e15c9f63cab99cd75ae3fba62cd619e2"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/onesdk_ios_ubee.xcframework.zip",
            checksum: "2ed1289a468d71f694afcc09d9a61aadf0157120f7fb783e2145720646c10b38"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "710e537c541645f6a9fede45f32c7fd101e89b98f515dbe079f40bfea1ca5714"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "0d7f0bce1aada218f991224944e11bbc235ef604a0b946642b21a3949692da12"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/OnesdkBaitianFramework.xcframework.zip",
            checksum: "03846ace814f784114d6b526fe09a2d269060cad0b5b385eac8f2336a295758c"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "512ad2aa289a243df96347e686784fc34410f70dbe74fe182916231ff5cab672"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "60386ad73512596d8094243b7240e2f2d0c4f075c04e6d9f327f251a87e71bed"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/OnesdkSeacommon.xcframework.zip",
            checksum: "386bdd81d5af63bf5f69bf62d32571d71ff88136ab2d94060e521e3306460d0f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/OtherPartySDKFramework.xcframework.zip",
            checksum: "6b2b3d48ce6a07ea1e59727155ff56078ed905fc5f69ded910e9a08a221d9e6f"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/Promises.xcframework.zip",
            checksum: "025d6ca81642e1594523e831e1fe3023475863a9679ed99d676cc6d7c373dbd1"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/RecaptchaInterop.xcframework.zip",
            checksum: "bdbfdfdf8f3a84bcb5c7316623c96ce622ca14f90fe4a62f32a772996e172c63"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559037/UnityUbeejoyManager.xcframework.zip",
            checksum: "feb1edecc11386c23ca0186b3b07d833746997fca76ecf88a46e694483004c93"
        )
    ]
)
