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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/AppAuth.xcframework.zip",
            checksum: "52e1901d17cf4851176b395291b3d8e7d7167df01800c4f4b84e9e51bc2e2fa6"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/AppCheckCore.xcframework.zip",
            checksum: "46275c9f61adf9f38cc2e5514d8bd0fe5e28cb89f96b7115dc4fe51f4d8660ea"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/AppsFlyerLib.xcframework.zip",
            checksum: "2810fd6cb40fe74010cdfb46e5a3e6de2c21e888bc28c7f024f720d68df2b05d"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FBAEMKit.xcframework.zip",
            checksum: "e74eaea4860a957871b96f50cf8538ea0f048f4073b757e5eca4dc0b96239deb"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FBLPromises.xcframework.zip",
            checksum: "e6a3e3413cac942410f41cad393de1d26f8f12ad7e3ce914d60fe7c1cfb15ee4"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "5032a0820aeffeca71f8cd136cc6dfab028128a4e45201971216d2895788c452"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FBSDKCoreKit.xcframework.zip",
            checksum: "7c94e84311b71e93fc08e2516a8c13854db4d1756476520adfbc6aa4f305587d"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FBSDKLoginKit.xcframework.zip",
            checksum: "cb7a053a7b2e86abf8dbb62a1794f6e0d9ef729673c11f2afdb88c47e4ff9361"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FBSDKShareKit.xcframework.zip",
            checksum: "e83723e8cf53947beb9a0c1b38f2ec93387dc8510b4fdbd7c88459cf7dae45b6"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FirebaseAnalytics.xcframework.zip",
            checksum: "aea6750afe2e330f417a51eb629b85cf7b27fd7d23aa65e6991e5fe47c2a3e70"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FirebaseCore.xcframework.zip",
            checksum: "30962a7dd4184441953f5fab02753a27bb5c4402f3119315b5fde6a9de303f5f"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FirebaseCoreInternal.xcframework.zip",
            checksum: "3b608d233ce3be2ec390533436ad2e8f0aa951a3c3ed611dfd52f8a25acdfd81"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FirebaseInstallations.xcframework.zip",
            checksum: "fdbd09233baf9bf31305c4c840eaed7503a9ec8e1ebe28a6ca982ae58cd43a06"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FirebaseMessaging.xcframework.zip",
            checksum: "8370b216d416dbdfc7c35f4e64f20b9be1fe4ff4827953734c4d47e97e999e4b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/FMDB.xcframework.zip",
            checksum: "584aca2e319d30f84ae2de0b8400473f8e1345ea2aae5e903a1decdcb75991c6"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "8f078bc5a4e91d7cda49a2cb00b131c6ff3c1695a0706c7d3f64fef36255a442"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/GoogleAppMeasurement.xcframework.zip",
            checksum: "89186d5d140da79c9270f87b084bacddd0044c6450342fbed90382af629e5252"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "53fa3a29de66f33371e21203f683b0d35cf55099f1089e25288af2a74a24dbe6"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/GoogleDataTransport.xcframework.zip",
            checksum: "aa31de728c5136570ada61ab6242c0fa52c1f272c108928bfb6a378055648a9c"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/GoogleSignIn.xcframework.zip",
            checksum: "0ae6ca5a0ac71227078e857fa3572a7cdd6035f2843e4ffa96b57f5e6a0c7028"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/GoogleUtilities.xcframework.zip",
            checksum: "cc78b9351751f867a1103b36354f5b135f0b85af9bf77a731d2e13a430954065"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/GTMAppAuth.xcframework.zip",
            checksum: "0a06ca05f88120d81372b641ad90141513f6029b3bc14e76c140ca08828c1197"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/GTMSessionFetcher.xcframework.zip",
            checksum: "e47a4620147ff9ec8904b72a2d2398ce591d64ec8a3984ca8619958b91716b55"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/KakaoCommon.xcframework.zip",
            checksum: "f6d7f8dbc43f6f7fceb7a8f8c5a5c82b2ce45481e2438e6c739fa55b146f1d81"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/KakaoLink.xcframework.zip",
            checksum: "280b7a85d5379b1c5435488f20b7ae8c44a652c637f9ffabe0cd58e1858fbcf6"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/KakaoMessageTemplate.xcframework.zip",
            checksum: "24faeb70086f763c422b8e09b90ba74e01a9bb4615781c429aa264c3059a5a3f"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/KakaoOpenSDK.xcframework.zip",
            checksum: "5b5ae6810531d7e16c631d16d10d46e15b54f5f794c490fe209d282a14412b69"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/Masonry.xcframework.zip",
            checksum: "21ef21195d8ca8292251a0620f6b72e2237b7112389a4a2ed2211132ff82f69a"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/nanopb.xcframework.zip",
            checksum: "5ac7dea623866de7c838efe3cfccdc7ddbdcdd39ef6eef71d9fcf3e537cc8b7d"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/NaverThirdPartyLogin.xcframework.zip",
            checksum: "ec49084fb342cc9fe0aa3c965c96039bcb9a724ec126c4b1216a8bbdecc48124"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/onesdk_ios_ubee.xcframework.zip",
            checksum: "b08fdc32653a8c407fd9e9a946612c4adede2e74370637aa6d6c6cbf5eff2a43"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "287d12435c98457e697075f07d7509d947a95d956333dfe1cb8130523285f6f8"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "dd3e6112237f6fc6d71c39792182542650c1d496babf3bcb0e403edde7a4ff4c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/OnesdkBaitianFramework.xcframework.zip",
            checksum: "7afb46aa0ceae6939aaf6b995c0933358f83d74c36a84e0672b0709f4038ce7f"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "b9eca5a53968c90898630295486b4c7a573b9196c42b657f657ac78f89a7048d"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "65e5b490919324349a0adb4ab11568a93ddbc84f72bbce657dcee4b9cbf1f0de"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/OnesdkSeacommon.xcframework.zip",
            checksum: "eb350180c776ba7ac2ec6594835b3961b35145e367c3dad69a0ba7049130ba1e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/OtherPartySDKFramework.xcframework.zip",
            checksum: "b4defa95a0668bd68ba95d5ed5bfa5e1e6a1dd4d14761f3a180909a99c607621"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/Promises.xcframework.zip",
            checksum: "a72f91a50464501e0de403dbba230589baf6c53ba1a54a3aafeb928a6c39bbe8"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/RecaptchaInterop.xcframework.zip",
            checksum: "ac71a0521f972c006f10755d0ecd4e183bf33a1b79cdfc52236f1bdbf00c284d"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493727/UnityUbeejoyManager.xcframework.zip",
            checksum: "0bc459b84cf66844f6d394512d5008feb7d370923292fc9b15152f86a2251ca4"
        )
    ]
)
