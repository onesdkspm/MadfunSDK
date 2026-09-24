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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/AppAuth.xcframework.zip",
            checksum: "10c73ceed5a78447986384e5d7cb087a7231f7fd590128c6aa51f32ca5775ca9"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/AppCheckCore.xcframework.zip",
            checksum: "ee53d445f390e5ccd7fdac7f10b7bfea2cbbf81ef2a3d7b02263a69eba3afc69"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/AppsFlyerLib.xcframework.zip",
            checksum: "f26664bd5c826b4cb6958649ca8a937a34cef1951d031d9ca15abe883a2d99e2"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FBAEMKit.xcframework.zip",
            checksum: "5826d17fdc138472159ee98565393cb7c320e61c44dcdfd6780f0bd47ab82c93"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FBLPromises.xcframework.zip",
            checksum: "050c7e618814e729d9b21cb5b2101174793fe1a684a96f74820bdae525e96af9"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "2b3551c70a27dd475091cf1a18f20473b8a8bdff38adc15ab64b1919c3236351"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FBSDKCoreKit.xcframework.zip",
            checksum: "650760c7f3170d4296528ccccf37585b8052032479516be844ef7851cd3e1057"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FBSDKLoginKit.xcframework.zip",
            checksum: "1ad8ed940ebbb561759c8491129cbab16da098e355191729cbd2ae05b5479411"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FBSDKShareKit.xcframework.zip",
            checksum: "a2ec7ee6fa735f12107223c7ef7906fa40d838b753aae99a5e65488b3bd77478"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FirebaseAnalytics.xcframework.zip",
            checksum: "6a490b76cd65fdea61ac1ec7aa64e420268730d8be9d2c136af85da5299af969"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FirebaseCore.xcframework.zip",
            checksum: "8c41e2a6c2225653bdcd8a2df824cc1f6992e00c6e65a911b1e0ec35081657ec"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FirebaseCoreInternal.xcframework.zip",
            checksum: "8b553a4972065ef63ecd14af66550e0bffe7d45bad93b1845b00c4bcf78d89cb"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FirebaseInstallations.xcframework.zip",
            checksum: "1426f0eeb4a542e0f1f7432d5a199b580f2b111dcc1fa2671774febc8b033878"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FirebaseMessaging.xcframework.zip",
            checksum: "daff1bc5226a8c47e3c0b0ba73dba021d6cd80fe5e2569cd49fac038b357b634"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/FMDB.xcframework.zip",
            checksum: "63f1f59518e09883b67a0e6d3704183fd772fcf7e2b1f6689f8d31564eba46c3"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "478bb6ae2eafb4648c08b3ff010762a8d88f42940aba85bae5a851a0fe5be86b"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/GoogleAppMeasurement.xcframework.zip",
            checksum: "63de8d4ae571ed4c70585e8910fd2babe608c0bbb0d0b322b49c35abd5b428af"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "8f0c80de295438fe1a99c87391b53b06f010082bcdd8644990ef1cb506b47e8d"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/GoogleDataTransport.xcframework.zip",
            checksum: "0adca92e96e6ab61094fc635b4849352b695ca44f8b437869a0345abea33af06"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/GoogleSignIn.xcframework.zip",
            checksum: "0daeff8adc27b5ef6f0f26944000dcc892403f724309cdb4cc20c77fdb69e7a3"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/GoogleUtilities.xcframework.zip",
            checksum: "dc8f03dbe1516e2717846e1443e5f39cbba7f197d0a10954256616477bcb1101"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/GTMAppAuth.xcframework.zip",
            checksum: "2efc0022f032fa18b7563c9181ddec4f83f4cb4135ca3c767d39c6d342ee3da6"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/GTMSessionFetcher.xcframework.zip",
            checksum: "8de04319f3ec46885bb15be9ad91e3b2884e8756d4454b28edb6feaab8870fca"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/KakaoCommon.xcframework.zip",
            checksum: "b6dc60537402fcf232e352fb1710c6c61d629fa730049de4389fd1029aefbfb6"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/KakaoLink.xcframework.zip",
            checksum: "edf6c43c282c4ca8feddaf1cf325a628c10227290a69bd584048a85e626d4da0"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/KakaoMessageTemplate.xcframework.zip",
            checksum: "ee28b31ee036c540b193dc81c1b102f4b20b92732c1ab40814b6c8e6602b42cc"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/KakaoOpenSDK.xcframework.zip",
            checksum: "b2e8b2849e3beeb4811368fef5f5733e474cde7506322631ad01da5878980a63"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/Masonry.xcframework.zip",
            checksum: "dc54a8cde9c1bcba456a37e3f778badcc165b73c08ff93908f3ce72cd5908750"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/nanopb.xcframework.zip",
            checksum: "be8c0a6021a1d71adcd6bce488b79664f4d48a66d0fff2ef50c722ae7a3b4311"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/NaverThirdPartyLogin.xcframework.zip",
            checksum: "0a5b4480cae69f4d26bebded9fd47d75fe4b348eee8d5a472bc252b219c6f18e"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/onesdk_ios_ubee.xcframework.zip",
            checksum: "a9ca9067427fa123076f168895a14f5258bd056643401f20d3001371fef1f8ed"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "f2e7aaebc3f526e9005f44a974ba68497bac2add5b3c2f39a9b60c17256dfdd2"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "4ff7441a4f1e16243e846865da672a73adadec9ba859f917d1f0844cf0a03e1b"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/OnesdkBaitianFramework.xcframework.zip",
            checksum: "dfa482bdefbccff41c2f07af4574068d155ff70207d8b15eb433be21e8aa50f7"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "f34512a9448a7019cdf03cd81a8bf9a9c59e7f4b035832dcc54163d231b3148d"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "e454895e6c2f0e86974211cb0a38bb226bb2037b547f455cee3282be2e2a5b6c"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/OnesdkSeacommon.xcframework.zip",
            checksum: "8387a56190fcc0e1009a079140a5466271219f641ca2e4a95c1f25d8299a2c72"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/OtherPartySDKFramework.xcframework.zip",
            checksum: "bc5e03dd8c9d4e2f22d039aef43dea6a8884bbd2bb80b81fe9ba2a21f25837a1"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/Promises.xcframework.zip",
            checksum: "e72179802f6dc226863c9a21665f3b862bd2b4484cf294f4062a7d7885607291"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/RecaptchaInterop.xcframework.zip",
            checksum: "fbfe904fe45de9bec0da9cf1fc39e4176a183a86e7c6c2e1984eb2420015db38"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1536118/UnityUbeejoyManager.xcframework.zip",
            checksum: "d2f7701c15a42babce7556ca8208433544ac4a583e67494f4f80a2a964e25889"
        )
    ]
)
