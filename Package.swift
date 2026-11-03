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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/AppAuth.xcframework.zip",
            checksum: "1a4ec93389b4e73bda255a868f191362f666aa7c850e93ccbb1adc631c44ccb6"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/AppCheckCore.xcframework.zip",
            checksum: "54bbd3ea1cbf9777b5ca96a1583fd4c3aa8a354552171730c2e221d01974f17b"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/AppsFlyerLib.xcframework.zip",
            checksum: "9bf21fb6eedd3035d2d1aacbaa6d82d751bd2175dd24d6e50dc76102a49e5143"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FBAEMKit.xcframework.zip",
            checksum: "ef51d678ae288e63e62160ea559db633c3b311dbee9a1c149224e0da7cbefbd8"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FBLPromises.xcframework.zip",
            checksum: "f3f935c8207e97a20dbab0c27c0d967feb5519401edee948e9d3c4d38c90461a"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "d6c1695601f8ffd44e5dca7eb9bf1168a88af25a46d7fff7cdbd7c6c87bdc2c3"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FBSDKCoreKit.xcframework.zip",
            checksum: "d136f52443ca38f1d3143a2c4fe1dc2eeedd2db21e356044e830a8990dfd72d9"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FBSDKLoginKit.xcframework.zip",
            checksum: "81630454b04ae6a91d1f33962af9ceefb4bd88b827c388c3edd4a8c3c2fb388a"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FBSDKShareKit.xcframework.zip",
            checksum: "a22a151f461d9c0680f567f9d1e5f2deed5f8aa7e065121465e20a992caf169d"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FirebaseAnalytics.xcframework.zip",
            checksum: "0f0c37f9071a8d85df3f2a03eae2803d08b146f90f316755934e37d72edc31bd"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FirebaseCore.xcframework.zip",
            checksum: "8178ec2d55ed580b91947fd9c25464dbb2d189ce58592c520712c6050ebce6c8"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FirebaseCoreInternal.xcframework.zip",
            checksum: "c44e8271b107b40c7b8a24ed7e6431ee9c73c01657fdb0a54cb8169c611b436d"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FirebaseInstallations.xcframework.zip",
            checksum: "f923822ef2fabe098a9c64d44eefe99f1ab9abc71fa209461c04beb23e939dad"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FirebaseMessaging.xcframework.zip",
            checksum: "e86bb3bcce3a43a9853f846b5694a7096d4a3f6257052254158774080254c7d0"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/FMDB.xcframework.zip",
            checksum: "f8a4f4ae70cb4d4abcde54cd883a52caa118b419fa5c04f0d749a7c22e9272ba"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "c5f77866188e91f91aec49285379a9cb51f0fe1346529b2ee1267ea1757ee01d"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/GoogleAppMeasurement.xcframework.zip",
            checksum: "38f1025687a3f048201c7ba532d637f5be63e9ba3d10984c2a132ea55f24e4f4"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "06d93fa7d26ba5910c646e0d361d08554ae57281245777732d1f927e0e4835d7"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/GoogleDataTransport.xcframework.zip",
            checksum: "3cca1011425c06928660cbfbd4921a8e3548834a2cb056f509540b605967ad39"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/GoogleSignIn.xcframework.zip",
            checksum: "854a3d5b48388204b73b25ee11e1b8bb18b4e19c55bd81cac6d55791be159a54"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/GoogleUtilities.xcframework.zip",
            checksum: "5fe46989d79b35f8b873c55c286b56e65b7720aea2c1127103a0197c42b44442"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/GTMAppAuth.xcframework.zip",
            checksum: "72e86f7e7e88a032ed4c04884746312e53317e3a11f2c1b58d597d34307cc29c"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/GTMSessionFetcher.xcframework.zip",
            checksum: "8453ab62e9f0a917dd7a06ca34a92c75449a7fd3e02a62a2b404f815ed4886fa"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/KakaoCommon.xcframework.zip",
            checksum: "0ab71d1bac6961f4cb6a629da304cc627402c4c4aff5b0af60ed453935e52a69"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/KakaoLink.xcframework.zip",
            checksum: "1dc56e35ecac2391c5f4864b3463925f8ed474ccc9efcc6ba3e8da1ae351c0bd"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/KakaoMessageTemplate.xcframework.zip",
            checksum: "5d777135d08bfb75649a2ef87827d5d6ae540a2cd60cafa2a55d4950c90a7fdd"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/KakaoOpenSDK.xcframework.zip",
            checksum: "5ebbb9ebf067d3a142946172535ac758c7323c5323146597904f3dd90954152e"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/Masonry.xcframework.zip",
            checksum: "90a6b4cc2e04a7e0d684eacf3878977136a964771daaa4b181a16a01327639ef"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/nanopb.xcframework.zip",
            checksum: "9a6a29bd0eb98f05894531facbb8abe11e5b8f88905a811d82858c68a958bd23"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/NaverThirdPartyLogin.xcframework.zip",
            checksum: "28a3eac5ae10779f9edf7a290d159d7c9a4c7e2b11e487857fb4281c0e2a5bae"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/onesdk_ios_ubee.xcframework.zip",
            checksum: "31a0cd5547ef9fe46aee3153e86f9124c78278eb66604cae03513bb932bd6eb7"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "e7a3b8ec694c6df43da22217473bf0dfe4a0b03464f082d438952b0653c9e0d3"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "52ecad502469b975c22f10ecbd88b2f067e89e45c7274b7413693d51c329e0d3"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/OnesdkBaitianFramework.xcframework.zip",
            checksum: "3b33db2495fa3b170a8f00a38ac6bfe1092a8c4da03ed9410d1f10db3b894d79"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "acddfbaa5d6e120e933022c589c5b49e304bb322c80f3ed72fd4fc003963eb0b"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b4b78189ebd40faa09f29bbcf6f80a13c73c60f7709092e3cc55fefb91cdcc92"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/OnesdkSeacommon.xcframework.zip",
            checksum: "716f2169012c578b9f45421a95553c037243b4bbb336594d5891005d8e89af90"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/OtherPartySDKFramework.xcframework.zip",
            checksum: "6c82337fdb6465e8b241cc87dfc2395aa330135414ce912f71dce3c0201f2755"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/Promises.xcframework.zip",
            checksum: "84beba1de5cc55adb46bfd24ab5cbb4c70a6fc492ed38927f9523e1dff51a36e"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/RecaptchaInterop.xcframework.zip",
            checksum: "b456b3132fc67f9f5bdf1ed44b944254f978f26f573ecc44f05b4587e6f62cbf"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559030/UnityUbeejoyManager.xcframework.zip",
            checksum: "6450785cec85f0476e33ad1f1a0558e4f4589c4fdf7ce83ef2013ebcfd5b7f14"
        )
    ]
)
