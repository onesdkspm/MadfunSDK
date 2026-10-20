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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/AppAuth.xcframework.zip",
            checksum: "33ed2305d90d73b955506fe81eaabc59d912ccdf723684eece2ef3793e51a38d"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/AppCheckCore.xcframework.zip",
            checksum: "2d13b8f26b751c6a0c8bb9be26d4e3667dfc11e7bcbbd800a5bc3d65f551a85c"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/AppsFlyerLib.xcframework.zip",
            checksum: "015dabd650a52a7effce87d9c04da9aae3dad2e1cd0271fa2cb110358dfc99f8"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FBAEMKit.xcframework.zip",
            checksum: "a5a654d37e0006ee437b9e4f2bc09b65179e66962e90cc2a041df4b3fd0b73ce"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FBLPromises.xcframework.zip",
            checksum: "53185914310d989b9c1a5bf38d99bc8778a36dfdb069416c7c5a8b672622ab38"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "7011ba610d36d8054d21b26835fef401c7953e16b9ebcaa0f690d07a80574419"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FBSDKCoreKit.xcframework.zip",
            checksum: "4d6b1cdd1eaba1fac19f6b85d8e3c98caa3b8af7a09e25f28ed75af960700354"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FBSDKLoginKit.xcframework.zip",
            checksum: "389bedcba15639b9812100d67dd12e3786d17991bc03b5a4e5fd29e666bd30d7"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FBSDKShareKit.xcframework.zip",
            checksum: "191c01fac2442ddafabdc638fc8a3b1ac2032c85dd503bd1ff4c622b8783b164"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FirebaseAnalytics.xcframework.zip",
            checksum: "536d06ed5add8c020b7e38bfe3fd9fa34fc61417168df407cf16123d0dedde8e"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FirebaseCore.xcframework.zip",
            checksum: "7163fe45a5ebcf211440bbd7a78c7280b8e741dd99b1abcf24ba9b10d9e5119d"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FirebaseCoreInternal.xcframework.zip",
            checksum: "88d0c4d02220da73bd5fa9ab16fea64aab95820f6c30c884b0ae3d2e5a634f23"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FirebaseInstallations.xcframework.zip",
            checksum: "873c0b4f585098d3f2aac2c3f3c25a8f78cdc8613d30123ddf7801bdcf1edd85"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FirebaseMessaging.xcframework.zip",
            checksum: "0b5345278bdc46ed0ebf6e74591c45535af1b39bd17de467702fa6a96af3f13b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/FMDB.xcframework.zip",
            checksum: "9b4f9de2bd00da8296e356d27264af8a0cc441f53bce00b34a3da2f7ee490d38"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "54da7fb12d90ae90b3a9306372cb790a25db307ad585c50a2f943cf0730c32e8"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/GoogleAppMeasurement.xcframework.zip",
            checksum: "fe3d8b97163c1ee15c7d4c6eecf5746e1121bc4d5b58f7c32cb77319d05296b8"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "4b2696d5794d5955fa2822fc91666be94a69b73dce3ad80bbded5027a7c1be98"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/GoogleDataTransport.xcframework.zip",
            checksum: "6b3b542a6dc7e417b79aad05c74da45261bb4bda1d385f1fdec7686c351f5fce"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/GoogleSignIn.xcframework.zip",
            checksum: "ea558c4858617dd84ba2230c1c92baab179cb1d8329e9aaae9a85f7dfa69cda8"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/GoogleUtilities.xcframework.zip",
            checksum: "00ad05780ed27b3f7aec1f568626110c42704a07bf5c218d29022d74d3f71823"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/GTMAppAuth.xcframework.zip",
            checksum: "916c49b6f17b7900fc4601c59c101d3ef337e39572127a48e7cf765ba2281b5c"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/GTMSessionFetcher.xcframework.zip",
            checksum: "4c2d32cdcf9933ba1e7201b88a2dfd108866f92eb400b685be11bc491742c365"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/KakaoCommon.xcframework.zip",
            checksum: "77240a6d11ad844dfc1c60325b4f4b228c7041370420a68c5c56de774b61ace4"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/KakaoLink.xcframework.zip",
            checksum: "c9541ca39064d3563e4dcbcf85c972e922d7541ab20e621c7d7bd4e86c94eb39"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/KakaoMessageTemplate.xcframework.zip",
            checksum: "b57a9d51d176fba55ee9a3f9795d2a8d55ba39695b839ecf4d531f53dc6440b0"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/KakaoOpenSDK.xcframework.zip",
            checksum: "418ca5cb8d9b0b1627998a977c48f6413c2a215c2846319d11608a4e015743d2"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/Masonry.xcframework.zip",
            checksum: "639cffda4c0590396acdc49c90b5042c223154390967bf456af6f7ffaf3c354b"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/nanopb.xcframework.zip",
            checksum: "8c6010b2f06f6b48388c82f147b51fa83f0c0e28a364704c40443ab174b25c01"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/NaverThirdPartyLogin.xcframework.zip",
            checksum: "86a52d7137bc411da7fbdeeabddf954e5fe94ef5f0d654307931f5bb9d867bae"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/onesdk_ios_ubee.xcframework.zip",
            checksum: "a3893c4d6f8b503c675210716ccac9c4770e40c16b1ae79e8567a2fd8c611979"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "4073ab4b022bec2713f58696011d66867e56385645f7bbd8a6d6cff4cbeed694"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "69414df264ce4e0851a16349a557fb059a0ceeb6e5b761872875ea2f376495ff"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/OnesdkBaitianFramework.xcframework.zip",
            checksum: "df6ffb4128105596c2ec785019fe2bd1adfae42317395350de102f744d9b50f0"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "9a1bdf9e4d057ad7d3edd8120e45c8a5dc07954d86b865517aa113705b9bc046"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "c0aaf3de8bbe82b21fa1c958e328cd8dcee535e15d51ba7653b8594ef392be52"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/OnesdkSeacommon.xcframework.zip",
            checksum: "15879a4eb324f32bb764182fecd9b8d488e2d462d9562558edc1d2d62e80412d"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/OtherPartySDKFramework.xcframework.zip",
            checksum: "d34f7840141a03bccd0ab9a6b36d3ac14e3d9e577d86bca5f6276bab3e926075"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/Promises.xcframework.zip",
            checksum: "623313f9c265d693717086091cb7e6dd09f505feeeb3050f3ede46e335235ad8"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/RecaptchaInterop.xcframework.zip",
            checksum: "597bbfa2af06dae1245701515bd3609f68b38e3aeb40b7ec5eacf979b8a36f4a"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549439/UnityUbeejoyManager.xcframework.zip",
            checksum: "62f57b51d9190e4cd8fce605b1332bc4229e7c1cc667d946266adb1311e4a85f"
        )
    ]
)
