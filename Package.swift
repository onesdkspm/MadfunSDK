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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/AppAuth.xcframework.zip",
            checksum: "cfc4fc8df223063daa7c09206d6dd229a9165abdf79ee4573fd5e98fa62ecf78"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/AppCheckCore.xcframework.zip",
            checksum: "5d061d474981117eff8255f3c7aedf6210974e8b9092734273b9e8c12bc59d66"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/AppsFlyerLib.xcframework.zip",
            checksum: "8befaa2b937d48865452d8a9f38603dd7d0ed3941ee938ac07bd325b98bad5b2"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FBAEMKit.xcframework.zip",
            checksum: "d3046781cc46bf152f2384a97ad2d092365500a33f3a51d473e333482742cb43"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FBLPromises.xcframework.zip",
            checksum: "d9004e217fc2375606d7d034d9b1f8cd6152abbbfb9cc78f79f8e86075f30266"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "2c122fb40ea4bc3001bfdf7bbe36e2de2976f53b169a0d8c5958f981b9f3061e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FBSDKCoreKit.xcframework.zip",
            checksum: "3c746dd5765ef9150409ec60f078bd45b57c9171978f8e173442ac4c6fba372e"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FBSDKLoginKit.xcframework.zip",
            checksum: "f3c0a9a9b743cddbdc3fe0b7ced0e22236ba9e91073fd888d7a790db5e6987b2"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FBSDKShareKit.xcframework.zip",
            checksum: "8e1f29e5d933686adc17661f4724a091415810eac12fd2f12323394f1581b961"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FirebaseAnalytics.xcframework.zip",
            checksum: "33c597d03eb04f47d7a9ab0fd6c768e18799b7706aa798b5c44d39acb514119a"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FirebaseCore.xcframework.zip",
            checksum: "e630799af340676ebc03667ed3473e41c852db1935c5d068fd438e63f568501a"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FirebaseCoreInternal.xcframework.zip",
            checksum: "9e5f95056e01b0b76e5b551dfe9302e6d07c397ff69c908d88b95dfec05a7095"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FirebaseInstallations.xcframework.zip",
            checksum: "9fc897a983bc8a3c97e1030ad11509822f3456168915acd32fe0ab300fca4278"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FirebaseMessaging.xcframework.zip",
            checksum: "495c308f3d852b562ea705020275434472b21249bfa0f6411a0d9f66ef990df4"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/FMDB.xcframework.zip",
            checksum: "b7c575780a9afc5ebb338dd6e1e61886c8eb609c11b698e70e5604fc6957d9c2"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "3b3ccddd7863bcea0c0d6c598ae634b9ce0367e15d7261e0ffe693913d629e5d"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/GoogleAppMeasurement.xcframework.zip",
            checksum: "a2a1ecfbfc2b28c01ca111e325481168079dd6e6b9a403c85c5e1bc9122953d0"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "346f63d40288f181e9bc1ebfb379516d8f7faad34af39c1bb0a00747ee8fd403"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/GoogleDataTransport.xcframework.zip",
            checksum: "3756769a958a79c8139ee3f2cc2c18c71c996177b1262c820b65bddfdb1535ca"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/GoogleSignIn.xcframework.zip",
            checksum: "56b5b26d2548b83ace7b2c9a97860fac58b34d7304d0660e20a2f4d9345b4f12"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/GoogleUtilities.xcframework.zip",
            checksum: "8fb829ba85a6a4a9265207cde31bed2b01e308c1394c5e31315af001aa4ef037"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/GTMAppAuth.xcframework.zip",
            checksum: "856b225cffd49c88e5fdbfcb3d4fa319f3fdae90ce503dd069a0051016b4dc05"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/GTMSessionFetcher.xcframework.zip",
            checksum: "785800f0723e12a019222945865d3d90e20139dd0eed027883530497020fc3cd"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/KakaoCommon.xcframework.zip",
            checksum: "4d01ff9f3c82fb07826f71a5a7fcc1271ac9cb9197a4b033ea80e798d8de5d28"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/KakaoLink.xcframework.zip",
            checksum: "b898ec2bad784961f6e2c0587ad436f82c3b42c9709b4aa8474fed0fc47c55c1"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/KakaoMessageTemplate.xcframework.zip",
            checksum: "c50d81254f0284c8cc005b7b4d71c8d498ff65d516180e105f7836a1190e3164"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/KakaoOpenSDK.xcframework.zip",
            checksum: "b25b48e7854f5457d9b6bffbfb52981f53b9a6f32d1e914ebc20e0ad0b4b0201"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/Masonry.xcframework.zip",
            checksum: "6d471a8c752cbce8923f0f7d516cfeb0f7e50ea3c7a0b6eb9a1187fcbcd24c19"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/nanopb.xcframework.zip",
            checksum: "e79ed91b3a3f5491f7e38b53c342aa205799cc5a7ff959a0ae7f886469484564"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/NaverThirdPartyLogin.xcframework.zip",
            checksum: "593636f77b0e1feb77b30367ee529a4f9f24852100c41a132c3104a7620334db"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/onesdk_ios_ubee.xcframework.zip",
            checksum: "4c1dc4f2753ca7e279273f607ba06a05005c687c1f5ba7cb972aec55c1bb7495"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "890dbfdaf6d0f375943845149de7062a19e28dfd8b2d01597e2a5ee2259ab811"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "4c7837f7a5f8c5f89412291a3028e61f337e07d72966698c319d400e420aaed2"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/OnesdkBaitianFramework.xcframework.zip",
            checksum: "8f53f15e4f2808f2b5378bb61f62a4eb63b9ffabb30413301ec3b7b8a6347ac2"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "294ccf31c664bde463652e3c5e465c10cb32faab249caf1ef2cfbaaee9638129"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "c1e39af748da0667eb87332e94b15d6ee110cac190541ccba4fc5b722fc75307"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/OnesdkSeacommon.xcframework.zip",
            checksum: "df76e7fea4ab5d0904b71d328195654ef38236f19f5528b63129946fe0b5f286"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/OtherPartySDKFramework.xcframework.zip",
            checksum: "e8c4e4b6676329ecb69fc43bbbe8abbce3f1a7fb47c0be2a9b895c5412d5b6cb"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/Promises.xcframework.zip",
            checksum: "8a4866bd3883ed64c573d1abcad4bc6db1d7aea98e2cfbe464c3a3e113baea1a"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/RecaptchaInterop.xcframework.zip",
            checksum: "118bf36a2b9a440fbf084d3347828dfafe4a7ed42f61c543b87658bbf481b626"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542851/UnityUbeejoyManager.xcframework.zip",
            checksum: "7c019e65e5136d60d15f599ccf4f3069f2962f2590a9070f74feff84a7159874"
        )
    ]
)
