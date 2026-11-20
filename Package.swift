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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/AppAuth.xcframework.zip",
            checksum: "2ad0af38f54795fc3ed83321480ae61eedb9eb1967e90720d6b2c2bc8f845300"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/AppCheckCore.xcframework.zip",
            checksum: "900acd428b7325311cdebd40e527a1c9004bd7bf6ebb8236ef6d3f477884beac"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/AppsFlyerLib.xcframework.zip",
            checksum: "35120d27bc054a207b4e6906a882432f05b2d7dbb37eea67f9fbe1cbdd5dac19"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FBAEMKit.xcframework.zip",
            checksum: "5d96b98146774f057f4c3c95492ea7b88ae34feb1055a96f63a0bda43ffc3880"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FBLPromises.xcframework.zip",
            checksum: "8ee10ab9919e5da1931ba43494b936042c7ba60c6aecbba5a1e581a3e43be4e4"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "b9909c3a530d5695d98bc84fda73e550477762d01e8309353a7bf6b0c1d4ed8a"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FBSDKCoreKit.xcframework.zip",
            checksum: "019d5e33931fb3bcc0ea46ee66eb6e02374fa67a87d536c1b95c863c415a6d33"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FBSDKLoginKit.xcframework.zip",
            checksum: "2ddc3c211b44775b7cba6cd2ac33ef0a11e26d62d517fe9a9a5b48d3aaa64aa7"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FBSDKShareKit.xcframework.zip",
            checksum: "cba2b215609bea498e6da0302624bf1924b00234e42f2f69fdc1c110aaa9541d"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FirebaseAnalytics.xcframework.zip",
            checksum: "84fc3eddd34b3e51d13b58456a61535a27fc99410ba7194619c4bcd103565540"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FirebaseCore.xcframework.zip",
            checksum: "a647b5cf9ec85523e442251786aea17cc5e1f3bd3b485cc1a48e65be45e6ac92"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FirebaseCoreInternal.xcframework.zip",
            checksum: "a20f0dfc5d2de81fb84a826153b3f045fd3f32c359329d678d6ebb87253fd119"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FirebaseInstallations.xcframework.zip",
            checksum: "5a958238218eab110b495f1ce92ef15243aea654776f47b6e79b396f3fa3f23b"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FirebaseMessaging.xcframework.zip",
            checksum: "afc63ca5373e44aa8125bdbe954355f2b397618b55cdd7ebb294dc4af15b4e3a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/FMDB.xcframework.zip",
            checksum: "a4a1495ad2400acefcb02a921029b7afab5dae343a084b796a5aefc47e8d831e"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "914fb58a0c4ebe325d731dd9ecbfce10be2a3de335c370896d1190d381e57143"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/GoogleAppMeasurement.xcframework.zip",
            checksum: "81dcd5e0af782708305150142f40e9011489171c5d5a31eff45ca14b8b1ea0c5"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "bd58246adfc953180b7546478668e1358fd9298471b92abcf0519718ac0045d1"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/GoogleDataTransport.xcframework.zip",
            checksum: "8b9d00ec9e7a391913b2d985186fbcc487b6298f198bd08d0e487790ad783594"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/GoogleSignIn.xcframework.zip",
            checksum: "a3935e2fd0670442b6fbc23bca8cad960fe27e5e7215c0d28f9030c5ebf7fe1f"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/GoogleUtilities.xcframework.zip",
            checksum: "230aab8716890a29f88a48e4ce49278e6e0191d6cf01e1e45c48e0474b73e78e"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/GTMAppAuth.xcframework.zip",
            checksum: "b350e15f31e62f9fe9dac2fc8abaadac5948ce72a9afb877afce2b3a720de874"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/GTMSessionFetcher.xcframework.zip",
            checksum: "109305fdb8fc2812450454ee9102a85ebd0c56aae347d59928d57970a9b5e3e6"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/KakaoCommon.xcframework.zip",
            checksum: "919e55c39fd9608dca7b05e81f081a47078fc9ed38e693b5f9a4c5bc958bb07d"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/KakaoLink.xcframework.zip",
            checksum: "2a15121f2f2163b5bb8b0bea74b52c51bd849ff620968f964aa9f0297db7b3c6"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/KakaoMessageTemplate.xcframework.zip",
            checksum: "fe3f293b6198884673d9953727ee85f7f248d9aa79e7734ca7b3773686c905ad"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/KakaoOpenSDK.xcframework.zip",
            checksum: "2fc458baf190a81ccf45dbcfed2dd11c18b6e35afb1111ac3927f442039c5ce9"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/Masonry.xcframework.zip",
            checksum: "461271f2891b141b5dad8111a322425d9df6d7db79d1007ff8f839d5340b731b"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/nanopb.xcframework.zip",
            checksum: "b5c71b4a0a992222f2ed3dd15c601be71b9cc797082544a2a6fb53b01119b36e"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/NaverThirdPartyLogin.xcframework.zip",
            checksum: "6aab059a3262cd188678bf828fafa5c32d1910475b18c2ad559487f6b0c4517c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/onesdk_ios_ubee.xcframework.zip",
            checksum: "e2432852b68f445f6cd246abdc05821662469fa19f2024fab9e561ef8a9e0d2a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "2a96c6e97287b466d6247ccaa31da24f0c1a7f6890e6c0747f78f5b35c4a875c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "90f73905cb073c3730a6f09c6c394b9046fd4fb5b138deb26f18b1958d6a4e9e"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/OnesdkBaitianFramework.xcframework.zip",
            checksum: "6aad6b31822c64f80cbfaf2185636dd941c89dcb4844016e524a16741d674865"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "0553e52ff9970d78495eb3e2dd2d2f2343d0bd958ad16ccba7dfeaa47c3acbf3"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b5e1e096f17a7714258efc15e889e384b0995382f21bea44e3aae212f3e02246"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/OnesdkSeacommon.xcframework.zip",
            checksum: "9ea5bb9242206dbc802809efc70331eda08da0f06124008fb63a115ca020c38a"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/OtherPartySDKFramework.xcframework.zip",
            checksum: "e237fc0e27c392f7e101dd51c6229ff4dadd6170e87ed7ecdc63e59747c00410"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/Promises.xcframework.zip",
            checksum: "c2606c81726f276a18cfcc6be8e43948f8a0b5eb5f492769f7fad0268b711af4"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/RecaptchaInterop.xcframework.zip",
            checksum: "7c3dd81bbffcdb6443b4ebcc86646c11434ad38b04125ea4609202a45ef9fca8"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1572798/UnityUbeejoyManager.xcframework.zip",
            checksum: "7af3d867ea98b4737d97a7b376108a8d389e1b010afb11ec296a8c9bd3144d38"
        )
    ]
)
