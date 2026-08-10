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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/AppAuth.xcframework.zip",
            checksum: "417cb244cddd2fc3bf4c6c90054dc301202af57431a165efb39b9b1de1636db9"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/AppCheckCore.xcframework.zip",
            checksum: "4f0c00f83e98086e65c2dc14e95e08c7c26f7d0d1cc6096c0b4a033159099459"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/AppsFlyerLib.xcframework.zip",
            checksum: "e03827ba824fd095c200a464b2236bef291211579b2e171d5cd8a0ed1f64fccf"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FBAEMKit.xcframework.zip",
            checksum: "30cd61d1e65fee5fe827cf7d3d115454885a205e08dcb974646c35ac20e4425e"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FBLPromises.xcframework.zip",
            checksum: "4fbef493372dfe10035b304a49264c1630695f42abc59c59617dd042799dd5cf"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "c57f38b5ba2483d441bb665665a754a5b9e1e6786449d030c6929f74cf20083b"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FBSDKCoreKit.xcframework.zip",
            checksum: "9a93ba9027aa4bd682b74c525ff260e78dd5f2bc5b2f38e0e8e1ad146b3afc7d"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FBSDKLoginKit.xcframework.zip",
            checksum: "90f40de165aaa50f7633dfd2b9a9a11f3f65a09a678984814f0c8568b504f685"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FBSDKShareKit.xcframework.zip",
            checksum: "162c67e4a23e2725cced3d8cdf6ca2c40454f45b249e2f99ec2345a0f7d54a81"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FirebaseAnalytics.xcframework.zip",
            checksum: "816cd099d3d3c3ec7c884827a4e870b3bc56d0bd6ebeca83e52cc2ecdf821d98"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FirebaseCore.xcframework.zip",
            checksum: "6a04791d4eb812273f3391b0678a5852940f17100592510b2a00602b6da548e2"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FirebaseCoreInternal.xcframework.zip",
            checksum: "00ab03bfdfeba55fe3b29aa5a44fe364625d2147503544aa04d6548d25d26073"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FirebaseInstallations.xcframework.zip",
            checksum: "ffb56a4671ba9f97400681b0d4a6b5f32af41b6b056dfdeb2eded5b514f40da2"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FirebaseMessaging.xcframework.zip",
            checksum: "9eddac26f6eac979172fdbcf2d870fb9283b6b4fbbc9f61362d564217254be8b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/FMDB.xcframework.zip",
            checksum: "e9dedb7a9e6a4f9adc673f6eb7c89a46cb4b1fe88f767b9a7d9136bf2d52dcce"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "12b121d9eb15e33c0faeb89693961ba1230954b905f7b176dafb31f0b9e65b8e"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/GoogleAppMeasurement.xcframework.zip",
            checksum: "b375ad89c0d729b711df0e44485f5500fdb0807b4dddf369659b44b9c543b414"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "cb9188cb214ab510e174201a3b3863e27553cffe9fb8694e07f8281ee03726c0"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/GoogleDataTransport.xcframework.zip",
            checksum: "82c245ff857af161e5cb2ce73ef5ab2d28a5352082bc6b590c2ef0f75407b774"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/GoogleSignIn.xcframework.zip",
            checksum: "3bbaa7c5803c53f2b841e46b5d4ec20d7100a0286ee97adca6c2b9dad0663f79"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/GoogleUtilities.xcframework.zip",
            checksum: "e1f25ebb2b8a905ec2d69bf9b247fdfeb6a7506db47511d2f7220d2b1dc8bf01"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/GTMAppAuth.xcframework.zip",
            checksum: "4e611db52b40474d29d7d0a0366b35042469279b79c46b76dbe44593d737a3ee"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/GTMSessionFetcher.xcframework.zip",
            checksum: "c50c1122cb1b2d210b164b9c9c6957c5eab90af1985a99d285552d21f12d3886"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/KakaoCommon.xcframework.zip",
            checksum: "ae6edf7a23148713129dc7e16d99434b3a606b39cf8a6980331e31cbcdfe2cee"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/KakaoLink.xcframework.zip",
            checksum: "ffd2db94ac355c4813ad215b184a48aed7ed6afab469922092b9a391b5f87041"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/KakaoMessageTemplate.xcframework.zip",
            checksum: "8cc451304d14ab51319069584b913095b111e676152f7739f5eaea4beed1a23d"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/KakaoOpenSDK.xcframework.zip",
            checksum: "af433300db2896739e77b141bf844169577cac5993927f781140be3f03bdf140"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/Masonry.xcframework.zip",
            checksum: "1dbd469c556a633fec7144be94198ad827aec7016996aec21ea7df648d7d879e"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/nanopb.xcframework.zip",
            checksum: "2805627750096cb12b8617a792fa096f23d6bd23bce5580e2f59ad0e89ff2a7c"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/NaverThirdPartyLogin.xcframework.zip",
            checksum: "cc3b00a05310e763c71ed157132d4b24fed91516938197860b9e28a4d024e6aa"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/onesdk_ios_ubee.xcframework.zip",
            checksum: "6ebf28d9b2d91542375fd0d8b30c5370214d1e55a202a08b055f9b198ec5ad54"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "db6fdc184af5a2172fd28cf731b49117eaaf6577bac9be5a712d3fdb74964748"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "d02636bd7a758d0894504f662b6ed6366ee3352d616d32f730795c25953b844f"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4e842d68cf5e988dbc307b1bb781f65a92c222d846a6ae20b3578af3f51fad08"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "146bf4850a271b1d23c72310f5e2e69b6f0ccfe815f6124ac46700ffde3e3aa4"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "794cf3c6227622d4b833edb53a5dca67dcf58e808afe49e832f0d50c91e0e745"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/OnesdkSeacommon.xcframework.zip",
            checksum: "ffc830f072e0117119a602df701864ffeec5ca9ea0ba79deae6902a089f3bb89"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/OtherPartySDKFramework.xcframework.zip",
            checksum: "e505584c42471751ea9112568c788f76ec5a19316438243520a6c7ffe3b66b0b"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/Promises.xcframework.zip",
            checksum: "d2e238dcaff2fd3f3cfbdf2c9d5c9e7339b365d693bc7925b73c1db358f606c3"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/RecaptchaInterop.xcframework.zip",
            checksum: "cc96fec3df3f80dc34a4dff45c7704cba7e8df351b5bea4e6bbdf63330c5dd23"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503686/UnityUbeejoyManager.xcframework.zip",
            checksum: "d6038760f4b82229f1a0bf3d7e277bf4a3e83321fc2c98c1f0b1c5224aedb3e3"
        )
    ]
)
