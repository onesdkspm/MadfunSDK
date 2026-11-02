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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/AppAuth.xcframework.zip",
            checksum: "12210cb054b61b8f2226dc4bb247206a61e8fba74f19eb1db9df6bf5b9541043"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/AppCheckCore.xcframework.zip",
            checksum: "66abbabccac742c3f70ad9128ebf96bab2bdd3cc5d36e268783fc0945eae7954"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/AppsFlyerLib.xcframework.zip",
            checksum: "b07bf44c9c702619c4f88bca41ec11826deae0c078b9363243d744be33ff2aa2"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FBAEMKit.xcframework.zip",
            checksum: "93840ed3870d7ae3fe73486482dab2d34c119c0902a5ced7737a174b6e64ee4b"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FBLPromises.xcframework.zip",
            checksum: "f566cda371bebebd4a6d737dedc49accd16326098ce5642f613394a73f53b250"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "6c06f92217c656d5fc1f98e50e29767a9d8b02b028e6a96ae44906b01c5c4046"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FBSDKCoreKit.xcframework.zip",
            checksum: "15c8ee2d96abf23c8680447ef2bb7e2b3e6c7e0108842ec4c955999fe691665b"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FBSDKLoginKit.xcframework.zip",
            checksum: "4ae294d97ed08866b3258b773244f39114a4eb1a4f30495bf2f53f05c8966ba9"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FBSDKShareKit.xcframework.zip",
            checksum: "8a85a4a24c1b6a8c1110a250484a02b75bcbdc7072455e4efb4e64e1bba7c467"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FirebaseAnalytics.xcframework.zip",
            checksum: "db4085cd29f9336ee7e42ce23907c11d23f138b79baf1b85b60f0035a73f8249"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FirebaseCore.xcframework.zip",
            checksum: "7fd38764ce6e5cdb93045d7235c220e47c2b6bdacbe3a96a182957bbef2037cb"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FirebaseCoreInternal.xcframework.zip",
            checksum: "a3ab5d14048549ab26b5ff5bde5bbdec6e7311f65b4879c4faa7723ae8063c9c"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FirebaseInstallations.xcframework.zip",
            checksum: "a1f381ba10cec7c26636f7a7039673f9ca6e8680a90ca18a54f5c71e67cc7127"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FirebaseMessaging.xcframework.zip",
            checksum: "1edeb34cb706824161196b0b3a65af531b7ee85b4d94c90dede7765dee5c19dd"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/FMDB.xcframework.zip",
            checksum: "a73c91edd85dcbc3a6e88ce481f208f3f562631b9946280d7da08bf19ae55872"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "08a87e1c99dbcf4059651c60dec72aa84903b388e67d6673c75e097622ab4129"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/GoogleAppMeasurement.xcframework.zip",
            checksum: "0a9b8dc5e330718fe2fbd0c5f5ba073a8305c1cae65764889582455a0c7b75cb"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "29988131cf333b8965759d7289779925529aa084218d63b089768a9e9e90b7f3"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/GoogleDataTransport.xcframework.zip",
            checksum: "37c5f1a7b5a7218e10688ab3efeaec8c504006f3cb1f82d09d3c88a9475ddb94"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/GoogleSignIn.xcframework.zip",
            checksum: "c0a4f7dd8f50c5a82f6e36c1f5cdf82df4977a07c2c03e3bcdc354c724c170a9"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/GoogleUtilities.xcframework.zip",
            checksum: "82cf5752a0e1bbc46a6c946c2d518bf3b986896295ea0cab367e0fe4f56e77d4"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/GTMAppAuth.xcframework.zip",
            checksum: "b92741d481a30a1fd352772696788f3ef5fa7c58e3cafd951a5acbe6d46770b3"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/GTMSessionFetcher.xcframework.zip",
            checksum: "9f88cb7e3eda9d40a87eded32c3cd105dff8fe17343196db97ccf85c7589e7f8"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/KakaoCommon.xcframework.zip",
            checksum: "f66e120483a3297087e7c8c5b6d275679568270cff403cf46cce47d2a1e45eaf"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/KakaoLink.xcframework.zip",
            checksum: "0cf9cd3af05d04344796d1874d03ba75f3a3783bafa4e4d6a369f2073f7e023b"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/KakaoMessageTemplate.xcframework.zip",
            checksum: "ccc71f6fc85dbd1023359ac6b83a25b419e4ea6269bcb99eaa0c232dd95ca35a"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/KakaoOpenSDK.xcframework.zip",
            checksum: "372b98e8ac752119411f72182ff47cf476e6bde2a05bde2f1fbb6dfa40f4a608"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/Masonry.xcframework.zip",
            checksum: "1a29f4e78e851007584900fae73afd023609cb6645929bbba16267e596de2c57"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/nanopb.xcframework.zip",
            checksum: "7835a007ce5e3a4396db6a53238bdb0c9f6e05a0bcfe6ad29dcb179acb3a6fb4"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/NaverThirdPartyLogin.xcframework.zip",
            checksum: "883ee525eec72a0e5a5dff61b82ddbe7ccc502d6023a5565d85a90c3fccc771b"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/onesdk_ios_ubee.xcframework.zip",
            checksum: "016bfc9b334f2ff6b4ed825f35e8c879ebbbe7a28fab1ea3ba72c96ff6f8a252"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "44c6bbb773ecaafc1576d24407f77e493fd38d80e010119c3c988e3a126e793f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "1161472d2809f8d99a42011d7439e11f8990c7b8d626bf0f0e09e1e1d3085d67"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/OnesdkBaitianFramework.xcframework.zip",
            checksum: "1d71acb359856329674ab5009229f2fe8e4ba0f9c9fc45a1bdacb26ab09d99d7"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "1e7a8721474a9d1f76dfd7754ec9278d7921e7defd6bb23802f5d282e35e613c"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "6aec7de7d1a8bcb964a3f6db16140d60831d43a4992298096c0011cc65c00532"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/OnesdkSeacommon.xcframework.zip",
            checksum: "696814310c9cc2b07f5c919a242c2b752f17bc8d85faf0bb9a91cb032b6ed005"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/OtherPartySDKFramework.xcframework.zip",
            checksum: "4cd1935938228561dc84db4e8a8f19436daff15aa4154ea23e53e28b81300fed"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/Promises.xcframework.zip",
            checksum: "f39b3b7c950faa260eaee0197a77e54ee38560a18a4e3d6fa0cebafb69b09427"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/RecaptchaInterop.xcframework.zip",
            checksum: "96cffe32b92221b6fbb1a044d74525042b54702cde25ad222b648fbb5c235841"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1557870/UnityUbeejoyManager.xcframework.zip",
            checksum: "9c5614e0b3a1096b9db87393fcd28282256ee194b518aa7f8f85cce908c7b888"
        )
    ]
)
