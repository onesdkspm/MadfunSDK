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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/AppAuth.xcframework.zip",
            checksum: "734dc12ec24245261f9055036b2593e67bcae75983d1947da6555e5455b9b966"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/AppCheckCore.xcframework.zip",
            checksum: "175247f8911a26ee3d796598ec8c2f50be013aff28987287d8b74b35263ea12d"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/AppsFlyerLib.xcframework.zip",
            checksum: "16c1678a1360bd9ce30934b6ebe37a89966b454e9ceb10f6c019b9bd9c29c285"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FBAEMKit.xcframework.zip",
            checksum: "4150e978f5c9dcb827aa93eb39bf82a8f7e999798595e46f20ac855fb50b6bdb"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FBLPromises.xcframework.zip",
            checksum: "3d0f6c706095b0653494236a2554e2f022e41d85eed65b075fc19da6b24a99e0"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "7fed17d239b447a4161a811d3277b8829584cfbe5a63c2b3a4330210bf5ec157"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FBSDKCoreKit.xcframework.zip",
            checksum: "d59d4117ad5ed0f35ca17e7c232a638b5cf71f0a5ed83c90d64b65b40d533359"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FBSDKLoginKit.xcframework.zip",
            checksum: "d0cc30e0caf124504771de420baa80ed32420625fcfa68bcfa5d885b8f0b955b"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FBSDKShareKit.xcframework.zip",
            checksum: "ab9473f7d7e6152bfc9ebd65faacb1dd59a93c10318b726d18558588d293f8d0"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FirebaseAnalytics.xcframework.zip",
            checksum: "165cf175858c48b89caa97baed15267a49675b2ee1b24fa68e3622ef90065fbf"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FirebaseCore.xcframework.zip",
            checksum: "9fc3eafefe3b84bf856288072b3a0b865c0dda5a51ef68da36685201c31b00eb"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FirebaseCoreInternal.xcframework.zip",
            checksum: "ead3c569f6792cd59ca0ba2990af9e402b81797453775ef684c36b912a47227c"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FirebaseInstallations.xcframework.zip",
            checksum: "78a014204b9902aa8ad1c1b9bcad77bd6956fe544495f1a6c415c35d2e44ce03"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FirebaseMessaging.xcframework.zip",
            checksum: "ff90112ca7e2ad1fadae2a0e65c56d17909c9d59cf7f875101f3381fc088963a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/FMDB.xcframework.zip",
            checksum: "d6117efb506a5f36e443f6643f8485a578db5de371259dad03581d4fcb5e31f3"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "4b2e02ef4d01e2ab6048f133ab1c16113f62d0e28e524319bc3472b6873125a9"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/GoogleAppMeasurement.xcframework.zip",
            checksum: "4c2d225b50eee6cf0fbf38c6980f0afbee6a536299aebc8ad4125d5dc0db5ed0"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "5aec7b9b5559999126098ca8b0361739da2b3a743599eb3ff7723a5144e49792"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/GoogleDataTransport.xcframework.zip",
            checksum: "327b45b4e41b67bbad0bcc62e1b5dac7f0a0a908fccc358e73bcb47a9d8d2366"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/GoogleSignIn.xcframework.zip",
            checksum: "12f3e6d726e8e09e5a3927f4b1bb84235a7aa0ba5557ce91b454edac9d3d338f"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/GoogleUtilities.xcframework.zip",
            checksum: "49d7337d334b0b9a5676064d0855bfea0d939338e18b0ea800d58213aa608244"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/GTMAppAuth.xcframework.zip",
            checksum: "9049cff5561e005e044c5d7319d417d68d1a95ff7eafe1c1a5354f825f172fb0"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/GTMSessionFetcher.xcframework.zip",
            checksum: "e839fc062e2dc49b93377a96f14ca48527b5e8cb84af5f160880673c7c6381f4"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/KakaoCommon.xcframework.zip",
            checksum: "cb39234955f781177b3d71d3aa6ab761070780e1b53a0424709c6fa34958ee2d"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/KakaoLink.xcframework.zip",
            checksum: "b01c190faa9683d8df8931d6952ef2d6eb47250e334132dbeb23045684c059c1"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/KakaoMessageTemplate.xcframework.zip",
            checksum: "5723d38097afe5d431873863d810a0c5577cd6c6606b932e047739a915083005"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/KakaoOpenSDK.xcframework.zip",
            checksum: "f1904fcc47d8ab3b3d1f396cf5affadd8281e7d1e8e059f2a49e03554ee780f6"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/Masonry.xcframework.zip",
            checksum: "aa5ab3835a3a3968367fe76fca683cc01cc2bb71a85dbbc234239d490c0efad5"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/nanopb.xcframework.zip",
            checksum: "3a685c25c727845f7689e70188775b0ea5bd9a8fec6fcb864a6d71939880b91b"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/NaverThirdPartyLogin.xcframework.zip",
            checksum: "5365dba429d7654e2dbd25a12decc99b1415180f820a6886632df1128ba5398f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/onesdk_ios_ubee.xcframework.zip",
            checksum: "905b0649e18c9fd33a92523698890f36e3aae9a45378197e59c910260c6ac85f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "116e1829d50bef28fb2dec2e02cd1f8aad0cc8e76519d16cfc54be1d28d1cc35"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2778e433edf9259489e10a4abdee58b94070e3ada662dad86196ed3d6df27ed8"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/OnesdkBaitianFramework.xcframework.zip",
            checksum: "3f5c5ae8e875165e84de894133c251223a6e073a8e5287acdd4c788cdd4bc497"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "d02b5e0ce985809805f385cabf0b148161b6cc17bb1e573f64090dfa5a74ce7b"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "e186102599678037042c2407066a7da8243304b57e2f0a76b85aa6f22399eee0"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/OnesdkSeacommon.xcframework.zip",
            checksum: "5bee6684455c61e83bdc31ee6e90e953b0aa10e29e75903a2d103c3dc30e0064"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/OtherPartySDKFramework.xcframework.zip",
            checksum: "b9ba4c85f1cbe74636f0c5b4f70784ca03a556a62d90319d443e9cf3c8d8a78a"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/Promises.xcframework.zip",
            checksum: "854a410f132dd195acc9d515817b08df3404b1d44c89a3bf2599de4615c0618e"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/RecaptchaInterop.xcframework.zip",
            checksum: "d02ec0bf3fe16bbb92f8581a4b3b23e43eb76a2eb79024848ca10175ade8fc6d"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2/UnityUbeejoyManager.xcframework.zip",
            checksum: "fc1dd1a9e6bfe5c059ca469dbfd14080af8028221880b80dad185b220ea9a617"
        )
    ]
)
