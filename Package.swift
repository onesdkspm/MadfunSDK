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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/AppAuth.xcframework.zip",
            checksum: "87ec8d2cca2e1171300d840b2f910a51bc30e3933c6580b0b0b6d9899dd111c5"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/AppCheckCore.xcframework.zip",
            checksum: "ad65fe2f998c3adfe15958f34e4498df24cb48424b3e08d519846e151948dd75"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/AppsFlyerLib.xcframework.zip",
            checksum: "633950b1aa117eb73fc54c628833b28a5f9a1531b8d9de1428ee8d53ae219293"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FBAEMKit.xcframework.zip",
            checksum: "e458b74e2c000b4a7173065ea872495d5e833559d08a50174de554ae7ed3e350"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FBLPromises.xcframework.zip",
            checksum: "5cb6820dbc17d7f2659adb9c12cf55de33026586c244fff8651898e3e46a9746"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "5e37e41e533e5b42fbe4850878fcd590ed083d4ca77e62c2b50da0a5b8f76560"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FBSDKCoreKit.xcframework.zip",
            checksum: "92fc270dfed90d2032cbac5f885dad379c3fc62be5f0b8d903059b83da09128e"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FBSDKLoginKit.xcframework.zip",
            checksum: "9f9eda3a0222461d1f5f057499a969d31be80023a664937f11b8e46595f120bc"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FBSDKShareKit.xcframework.zip",
            checksum: "30f1b7fb03dc2e2e14cf14926399917971ca54b4f443e8f72fa806bcdbe36f91"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FirebaseAnalytics.xcframework.zip",
            checksum: "32fba071b5e72683a844206321ff7d3a9fb8c528b288219282d6af0dff27db86"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FirebaseCore.xcframework.zip",
            checksum: "e4241eeb39b491748225fb16109d9131386d9c401112ad86baf86d918f4b6cc1"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FirebaseCoreInternal.xcframework.zip",
            checksum: "59fd1d7beac04cf8468d0c32440f3003334e94ac14c05b7b8ffba9eeb0709edf"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FirebaseInstallations.xcframework.zip",
            checksum: "ea367a93ef16d6676cc9a2d61d3291f7f8c3819e9a3b07cc207bdbac6de379d1"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FirebaseMessaging.xcframework.zip",
            checksum: "49038f899e18e492237099f7575e8e22d6c74b10de1cdc5cfbddf1720754373f"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/FMDB.xcframework.zip",
            checksum: "fa13cb6cc62cc8ebcabd53674f5569e526a8601641e7fa7a05d376b203d66dac"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "271704c5b415e08a91a0516069646217982d8fa8aea3cac58094cdd42a2a27bd"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/GoogleAppMeasurement.xcframework.zip",
            checksum: "fdfb0161bce806b09f70c32ff2600b5aa021bf4e23821b8dc93eb698fdbc39eb"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "7a401375c16adedcd8843d3fc1285a13c86356c484afd18b165e0f4a00e8cb94"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/GoogleDataTransport.xcframework.zip",
            checksum: "114e044bb631eff2e865e8f0875d371dae6eb5e488f1c37d04da4b644c031365"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/GoogleSignIn.xcframework.zip",
            checksum: "1da043f9b6fa8b24091161eaa19564905976fe7047bde31837eb1a3f494c479e"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/GoogleUtilities.xcframework.zip",
            checksum: "947ed68de45f2d8b3d7a4513036c2cf78ca2384953edb0fd328316844e1cf000"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/GTMAppAuth.xcframework.zip",
            checksum: "3ba121ac8d3c2ace0ca0a411a44049c6fc40f2914962cb937df5d380ed222643"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/GTMSessionFetcher.xcframework.zip",
            checksum: "68dfec08d437bd73519444abcda69c454f187aaa8020939edde59df23749fa1d"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/KakaoCommon.xcframework.zip",
            checksum: "8185ec19bec85aa159bb5f55d6842583ea1060657cd367fb8df358de11ea00d7"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/KakaoLink.xcframework.zip",
            checksum: "d2b10ab74cb4872023b75ef14aba307eb59ee621bef76487a3ea503cb296f94c"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/KakaoMessageTemplate.xcframework.zip",
            checksum: "9af9cc97246c99fc752dd79f611535de09c9218126c042121ed51732e82aed68"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/KakaoOpenSDK.xcframework.zip",
            checksum: "cba96a6e56eeac4b7669bc725dcbd4590f27663fbd181d50eabaa39103b5c396"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/Masonry.xcframework.zip",
            checksum: "ab8c9f83fa90c612747178b6e5cd97a3d723d230c5f4fe8d27fff7b4cc26bd43"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/nanopb.xcframework.zip",
            checksum: "f2148ac81319774f6ba09127fad78338a9328466486fe8ead72c1589f7a2666b"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/NaverThirdPartyLogin.xcframework.zip",
            checksum: "7aed4f424d42eea4a3aa9403bf6309d073c183f34b61cd6304625dd9288509c4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/onesdk_ios_ubee.xcframework.zip",
            checksum: "c48351e909843993853d7be6217fa3b829fe36032a7897da83b98eaea908bb1c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "8773da136d977820870f2d7a539a778a95761e145393514127df28d5e9c3805c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "cb387c5c2914b95351a421151e6a421463bad41ab4409b375157ec9f0eb6221c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/OnesdkBaitianFramework.xcframework.zip",
            checksum: "695ed9173f8ac0810f0ee15065c15681ec796a2093d1a0a288bb0098d561c1b5"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "fc583519425ae00d26fffd52c8941fb1984a2b4924491162bcddf1d403070c15"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "ad95b92a41e32169ad8b98d08a22853ac80d194cbc8fa3829e79e39d30bd98a4"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/OnesdkSeacommon.xcframework.zip",
            checksum: "76dee2506a910643ad6b6b4e516496ef8a58659811324eec1d514699921d5c33"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/OtherPartySDKFramework.xcframework.zip",
            checksum: "6511dda788c9ed80e267a2854727e47b973b480758135b0fa05e7c4a5ff85992"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/Promises.xcframework.zip",
            checksum: "c9e38709353b873e06434256e1f64e3397c8f4cf7c0d3a9d6ee236f0740db487"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/RecaptchaInterop.xcframework.zip",
            checksum: "3c9815fd901487797c22af6f744f8212d8c62d02c9dcc4a4b928519e05008702"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525188/UnityUbeejoyManager.xcframework.zip",
            checksum: "55eb0559e3492d2b034f9a9e44a9d00a921a9bd8e4bc9e5167fb9efd0b8111c1"
        )
    ]
)
