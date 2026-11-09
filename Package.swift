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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/AppAuth.xcframework.zip",
            checksum: "aa999bf7f196536481bcf1a7a4120a2fba4cd8a3da79845fd31023b0c51cf761"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/AppCheckCore.xcframework.zip",
            checksum: "e8202c6e58d8b6db56b4336322fdcd3915abb21cd9a9efaa289c0e6c3b330c43"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/AppsFlyerLib.xcframework.zip",
            checksum: "72d9b13b0f4a27ce37ab33f57e98ee299c4e4ea4b81857d3470a9dc3c55e0ab0"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FBAEMKit.xcframework.zip",
            checksum: "6d598a39a4a939d327ae9cb5989c58e2e9391b3eef4b82af2c6349159988d3d9"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FBLPromises.xcframework.zip",
            checksum: "7573a718957b1f87affbad7f62cc2732da09f84c2a53caabfb137e1b3d900c65"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "2cd130907dc965d5f19de28d2ee87377f2c774f926d034a1cfab5c2e006b20b5"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FBSDKCoreKit.xcframework.zip",
            checksum: "0079f33ff1a34934ad7822ab3d1d1bfebef3f5e23f03c1f8ef5bbcdbd7071995"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FBSDKLoginKit.xcframework.zip",
            checksum: "325b834acf7476ad48e9dbb0f441c64f0e0883a5340c795a69bb78fcd45d92fd"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FBSDKShareKit.xcframework.zip",
            checksum: "72789ddf7d3bc6d7d68cc741e4c0dfde8b41fd5581913d6ebb332b1b82dd6fee"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FirebaseAnalytics.xcframework.zip",
            checksum: "a32170d68ec03faefbf85706b9ac6c3220bcbd1cc80c39a6bbdc2f36efc00eb2"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FirebaseCore.xcframework.zip",
            checksum: "e1ced74cf7a777a52659dd39d5a83710d48a715680e84e3e0787e0e6276bc354"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FirebaseCoreInternal.xcframework.zip",
            checksum: "d115d9d0194aa8ff2033587621245d8a0c1326129aba8e350461ccfafc50b03f"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FirebaseInstallations.xcframework.zip",
            checksum: "96b296760f4d738b002d32e4e2e066280ca2b8c7b6596430d90e3704474dc071"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FirebaseMessaging.xcframework.zip",
            checksum: "5e06712a3e76b9f7a5d886f40470ab9368ad7938f1f36610d8f3a7357e24cc0f"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/FMDB.xcframework.zip",
            checksum: "e40df664e5163f2233d30af0a67b5582cbf47f5e5e4f640d87017c3b2b7d69f8"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "0fa39facf2db74b980f5363b71483722fb937615a15df3d46822794b500456bf"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/GoogleAppMeasurement.xcframework.zip",
            checksum: "f17c1d625f8289b3e4adb340ded24f9838906f42d897644e8b5f59294a887e6f"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "a8f8783c59a23cfea27b9d8102939b28c330fdab084b411663ecf9a62eac9216"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/GoogleDataTransport.xcframework.zip",
            checksum: "08b9507bb7e7f8c5558dcacd6cf0188cecaa9b483a65d3195a5f275e9e0f0c3b"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/GoogleSignIn.xcframework.zip",
            checksum: "8178e6be958df5cb2575db78129ad0ca2dc9da14c83c3c20c9e274a017718dad"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/GoogleUtilities.xcframework.zip",
            checksum: "74b33d6dfe5901e6e7aa0c885e3b732a954185878864d811486111bbd5fdf020"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/GTMAppAuth.xcframework.zip",
            checksum: "ee46a6dead24cb8f9b684bca3f648a01d9ec95fe63ea4030d4779c203fa190f4"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/GTMSessionFetcher.xcframework.zip",
            checksum: "4fa9383f5d9eb02bfb705db7ba4b8a7225a103da08eff6624e9c26945a47a794"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/KakaoCommon.xcframework.zip",
            checksum: "3e3975b91ae948e5655f5584c034a1ee8b38d6388e258c703de7b17ee60dd09c"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/KakaoLink.xcframework.zip",
            checksum: "a303dbb449f9e555041b928c29ecfba5266f21ca042e8fac7b2743f9725abe69"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/KakaoMessageTemplate.xcframework.zip",
            checksum: "fa86af4dfa4e8c260f5d71d8ce9424fac826c8c20aef7e42de9661ff0b98b75c"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/KakaoOpenSDK.xcframework.zip",
            checksum: "838e87e999b881db7745b1642fc5aaa3a470ebc9c6799902c37c0a95a9458728"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/Masonry.xcframework.zip",
            checksum: "b9c53a2389e9ee59b3f1444b3415b849cf9eb424545e791f6629e73f5e8302ea"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/nanopb.xcframework.zip",
            checksum: "ba21927c04dd81dde4bf6abd3f11bcf03c19ed5f60cc69c18535bd8b6c7e04be"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/NaverThirdPartyLogin.xcframework.zip",
            checksum: "665c68f9c640a7d3a29b0fe06457b2711b6b39cb8ffb61bcf088825275034ed5"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/onesdk_ios_ubee.xcframework.zip",
            checksum: "18cec4fda3ff093cba7107e8bff72dea58f0161f9d44071ffd260782e51c578d"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "a804b20a90b278f65002904497200e7c6df23003ae803aa5b435ef8d004efad7"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "11adbeede0aed08edefadcc6922c13df3cd032e1392592f45dd267f8560f76cc"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/OnesdkBaitianFramework.xcframework.zip",
            checksum: "65ec069ffeb8026e854a0ce6ebfa74431c403485e03ead80ee86fcfb1d3a6b93"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "67f708dfeb4ef8df84b6d787c0d8115c4123542de2cb8763c8d747f91ba46201"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "f7e2c57ac9b8d16ce20d1e18a3a43e5ad2680a791111360f75599c37851947a9"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/OnesdkSeacommon.xcframework.zip",
            checksum: "ff0bcb99bff59b34ef4103f870f6079cb3fc92d7a470e9b4b4f44609dfd015d0"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/OtherPartySDKFramework.xcframework.zip",
            checksum: "a9204b6c9833989d6a1982f9c4bf7b28f97def795ed40cfe6f3d2c8aebc20ff4"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/Promises.xcframework.zip",
            checksum: "664dcd4c54134e15ea56f7e65af91c22d0cd71b48f8d437a11620c515a7577eb"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/RecaptchaInterop.xcframework.zip",
            checksum: "a101accccf932ae715741f2ead98953a4defe0948b1bf00413579a21195a35d0"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563424/UnityUbeejoyManager.xcframework.zip",
            checksum: "10d3f982022b79d37b844ad7d395ea6882262cf5ed2d33f3841a52782d2a3a9a"
        )
    ]
)
