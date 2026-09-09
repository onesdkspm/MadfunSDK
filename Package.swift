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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/AppAuth.xcframework.zip",
            checksum: "7a276482af7e06e3de6c8d5ed181297c5cac06a55d4149f8ea84293494a1e402"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/AppCheckCore.xcframework.zip",
            checksum: "ee50689b903c4f65d25e898c77fe08a046867e40df83827147b4f9b5ea1b4955"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/AppsFlyerLib.xcframework.zip",
            checksum: "16a0542e0e6e44735f9e86b75c72f11c6e4fb78a94faa22818fac2e1abb2da6d"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FBAEMKit.xcframework.zip",
            checksum: "bef4588311224e1e03a4c91aa1b56ee1be2e9ec34179ad6ac379c137f1621c47"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FBLPromises.xcframework.zip",
            checksum: "fc49ecea8075751e917b7f5d5c83a7a62736b758e038119f2cfc7d8f080e78ae"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "6c1c90c577573f793bd122599a8ce1c924fbabd13f0ad5853315fe4c160ab812"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FBSDKCoreKit.xcframework.zip",
            checksum: "caa95ed86add841d863989a07b0675a6b3c1de3d15ed9505570e5efe2562d7a1"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FBSDKLoginKit.xcframework.zip",
            checksum: "620a1d4b681abfa6c0642d7d712993b5dd50ef6e7cea3ace62f9faf9452d7623"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FBSDKShareKit.xcframework.zip",
            checksum: "782922d65ea29d4bb6a2a76c8c9e233a4889f35a1aa76f318c60805f4e9b13c6"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FirebaseAnalytics.xcframework.zip",
            checksum: "d81165f9cc6055338dcb717c426417cbac5cd7917986d42f86885a9f4cdd7968"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FirebaseCore.xcframework.zip",
            checksum: "6447c9d84991167e389525158d481599e49f26690237db395855ebc080b2fa58"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FirebaseCoreInternal.xcframework.zip",
            checksum: "060118d72119acd833e5c027e38d22b1d4f117b172f7528fc03f3cd29bcbc74e"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FirebaseInstallations.xcframework.zip",
            checksum: "1ee7115d22bed3322d43f107477f4105e5f0755920248aa40ad61729447d3172"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FirebaseMessaging.xcframework.zip",
            checksum: "b823a5477005cca476191baaa44c01ecd468f9a152c66645dd94013b9b3ecde3"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/FMDB.xcframework.zip",
            checksum: "b20a88f51e1d5d04654de8656b30093a94f19a96e346584e8f1ca23b4566c961"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "90b5647cd8d1088f0ed168f20549da439027ff49fdc2af5ac253c57ed6cf17a4"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/GoogleAppMeasurement.xcframework.zip",
            checksum: "46aa5f52c8d6819c29b2b35a11034150dedb73b1545a9ad0991601578884437b"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "ef3683b9282429a560a265f7a81d673980c5f0a6fa9bc52d55472f225c442399"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/GoogleDataTransport.xcframework.zip",
            checksum: "a48e9d8d8f95310485da2effbf9616e15f2fd34053fe0c53691ebd9daae0bc5f"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/GoogleSignIn.xcframework.zip",
            checksum: "e8ecf77560b55652fe73ddc16065171557c47321e8799c6d8cc6c4d312a7e699"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/GoogleUtilities.xcframework.zip",
            checksum: "1daeff7db882b06038f0803d208c7645638191da28cdc7a267dc45ee3482bdbc"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/GTMAppAuth.xcframework.zip",
            checksum: "ccecc98a06ce997f900a6a0d3bfff595f857fb52781c05f511aa8db5021404f1"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/GTMSessionFetcher.xcframework.zip",
            checksum: "e463470d2c76f04d8408b6c4450d3dbff9de4b78202b124b66b557491264e290"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/KakaoCommon.xcframework.zip",
            checksum: "22f251bee62b298f0e5a7b833e4fa303502f497e04ca62eeefc2b35690cbc0a1"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/KakaoLink.xcframework.zip",
            checksum: "feb98aad97dd34e93dc2d42b446e0bfb4d1d044cea4bb3e687fcf1c045b40338"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/KakaoMessageTemplate.xcframework.zip",
            checksum: "b91d4b6500254b293cb38491f2e8f96735d063f52850f79b4813fc638f7bc1b8"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/KakaoOpenSDK.xcframework.zip",
            checksum: "f45f4e3d13a06043697723a150974614770c5c0f02a9b3b5fdd1f2e3bea7024f"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/Masonry.xcframework.zip",
            checksum: "8f93fc8f7cb163711989085c0e1c1eed9525209798e0c2b9222ab112e807e238"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/nanopb.xcframework.zip",
            checksum: "59c78de61af8e7444990e6c3bdc1442ebf47fb85fdc7f486f14b93b7bc33e96e"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/NaverThirdPartyLogin.xcframework.zip",
            checksum: "f6b38dc899ee6cfe53f87c421a3de69ef47db9703c5f67c4db21035b2254086f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/onesdk_ios_ubee.xcframework.zip",
            checksum: "ee25dcd25be536cceed29c0b83b853e94704f43ff4c6d4ecc33e75cfacf148c4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "9fd546c2cb050a255ff7804376fc0bd5c9a3e3910b6f5096902d9374d8afd725"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "9c6939ca1b9a64e3acedae7e78d8b6ff1e9042b02c20a2cf6d9f866b55728128"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/OnesdkBaitianFramework.xcframework.zip",
            checksum: "e4ea20c8e17680a774add63958e788d68f3267f4f7b0b4463a9c94406ec139ff"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "9367be57c41a3302ac0e7236b727866a2e32fa2fef74f93e215a1f4126a587f2"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "8985ece3925d7c509c8b9c1489b780b51d3f1e2b538062de5957567d9e80d98e"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/OnesdkSeacommon.xcframework.zip",
            checksum: "af183c082d0cccf1cbfdadda63f7a853989389786ed4c7df62e720efdbacbe0f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/OtherPartySDKFramework.xcframework.zip",
            checksum: "af37b6fee9204721d59eaaf7526401e4a1608b6aed9ab50496f5bf2e5e152e59"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/Promises.xcframework.zip",
            checksum: "bf10ba858f56aa68262b2385ae3adf8885e5ea6790e954b955d9df3dec4b7b86"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/RecaptchaInterop.xcframework.zip",
            checksum: "69cf0e7c8adf3951683885aef8c6ec1dda4b5ad4ca7d89beec327424cfdf740a"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525175/UnityUbeejoyManager.xcframework.zip",
            checksum: "94be432f66668fc1c48cbcc9e9b3d52661e562789dcbdaeea3c665fe3aeef406"
        )
    ]
)
