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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/AppAuth.xcframework.zip",
            checksum: "b111884c76f577603cbf2914ec95d244a236208d6184b3e94ff5c04c9c5783b2"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/AppCheckCore.xcframework.zip",
            checksum: "fd652f32d407b2ae0b6de88f285ada7980e2baee6cd41e647f6c64298837a518"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/AppsFlyerLib.xcframework.zip",
            checksum: "f904cbe52739f19d70ade284a46502503950adb0bd34f157b0b6a45fb21233c5"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FBAEMKit.xcframework.zip",
            checksum: "4f3c9b77f9144eeaff89388608390754a599588127b13c286e401773f921ee42"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FBLPromises.xcframework.zip",
            checksum: "83cc8e313cf1233cc657be7a09fe744f0416d7e28c19ab6644a0301a38616e60"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "eb0f4796d6ae9bbc4fb1824055fbef0c8e85496dc4812fb479f872d78a49c792"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FBSDKCoreKit.xcframework.zip",
            checksum: "af19ae85bf33fabbcd97c862df17e38b63d32371eec85d47f3916557885fe2a7"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FBSDKLoginKit.xcframework.zip",
            checksum: "4a73784221766d2918715c37e085f0786edcb8969f7e6062c920a93bc93bf496"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FBSDKShareKit.xcframework.zip",
            checksum: "c7cd0cdb062760bcf28e3006fffb5267c1d84b1a2f4f26f3c0e803f2950be5bf"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FirebaseAnalytics.xcframework.zip",
            checksum: "66e65b6fe9ef28a5ae78f5d5a7bd9768cb504e03b340f3da037aeb921a565d96"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FirebaseCore.xcframework.zip",
            checksum: "cb113cf594355e3b35b3dd7ba99a5036a38b84375156a34327c45fcb5a56d179"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FirebaseCoreInternal.xcframework.zip",
            checksum: "cf6e61f03e54c5a7747c3b6291ec04d64a0ace5988b2a7ff315f6c5744e62216"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FirebaseInstallations.xcframework.zip",
            checksum: "a747824fa9633e04e237c0e7ce9ecf6bf215e537b8f8866d741ade3c1b7943c8"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FirebaseMessaging.xcframework.zip",
            checksum: "39c53302c800159e61b21ee8569c6fbd9fbe816b673fc0275b6cbdc7e6845ce8"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/FMDB.xcframework.zip",
            checksum: "5721743485eb3e3b22d451fac33efc39e8fe75f26839fae855939d5e888ce263"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "5d8261591a7fed6bc2c7b84d3729a5f99f49cd160026e5c843e8fc73431c6299"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/GoogleAppMeasurement.xcframework.zip",
            checksum: "2b88c0582fa52583868acca2ee0e3019e1b423bcbac00ddbe1131297148f15da"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "4cb2c5dab79534e6cd8d6a2f3018dbedf03133cfe3d53a80209262fefba6f28d"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/GoogleDataTransport.xcframework.zip",
            checksum: "32b70b11db0be781f0a99c11be97600bc48d47b34427ceb16188e7b1ee8b9589"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/GoogleSignIn.xcframework.zip",
            checksum: "d21035e34554bc7be1426f8c0b18f56236c53c6c011deaa4a0befea45475a95a"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/GoogleUtilities.xcframework.zip",
            checksum: "ed84df0cc09ff850291e90728ce44d24aad399035987254479594aa52d337874"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/GTMAppAuth.xcframework.zip",
            checksum: "cc832f5e203b3e3c8228e3e961e9be08b68e68209b2912ab6a75e162b0560783"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/GTMSessionFetcher.xcframework.zip",
            checksum: "6bc4f05aae5c2296d700099fb4679112cf8866fa74602f9232c8fbb4d463313b"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/KakaoCommon.xcframework.zip",
            checksum: "824617b6d58bbd922dc67d5589b81ae05f0389a3e0568be6637a39797a26551a"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/KakaoLink.xcframework.zip",
            checksum: "00927ec56297213d1f3b3eaf0c807672e012eacb4926526a4f91d4601129633e"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/KakaoMessageTemplate.xcframework.zip",
            checksum: "3d0218ef4b734faf356a42f93e7ca6468ae75f4a9106711c906f9f1a6ebf2691"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/KakaoOpenSDK.xcframework.zip",
            checksum: "d1af462ea840842a44a1af8114fff1fa924e5f10900a2e3e02d1e8972e3a8e86"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/Masonry.xcframework.zip",
            checksum: "ede1131d2302031c137001b84d6e38f7b2ba58aa1d6210babbd910f5d0119bad"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/nanopb.xcframework.zip",
            checksum: "ff7bc797d6aee05511117aa4fde62ede0888122fbbf30cf8b93fe1b3537f5bdc"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/NaverThirdPartyLogin.xcframework.zip",
            checksum: "f5081db1cb39ea3cfe93380cb390a5695cf1dfbcf8c2b37a26e91cc463793b47"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/onesdk_ios_ubee.xcframework.zip",
            checksum: "857fbcdd02fe8c1b278ebae162358f841a11c979df00496de677e07658343634"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "f6407c1c64093293fc1bb1a14829664cdecc9bf34f99fff35c245566e5d82e8d"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "948bb71a3115e617d1f997d373328e972bdd3aa1489173631d4e82705ad8628b"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/OnesdkBaitianFramework.xcframework.zip",
            checksum: "8071c90a86571e20b248e176e321101e5447f5eaeae99eea53558d7915bdc3a1"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "5253151149062aa91e2ad7749938d226b6f98e4349bae03138abd2b5fac3d396"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "629eda485c95a16d8a562d4a8e9cc77d33ecbd8c0e5de5b4b9fd62fdf0c0acc4"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/OnesdkSeacommon.xcframework.zip",
            checksum: "0f9708b24c6b83d3b96b6bf70b5f3ec7259f7d68b27c018ea11807cb4897f011"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/OtherPartySDKFramework.xcframework.zip",
            checksum: "40e7a372b43274ec36d9559a52454f088992b26402eb03a97e319ecf5189e159"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/Promises.xcframework.zip",
            checksum: "d64b1bb3920fa0fc45a243059a85e51f06c4d287185d72d2a50eea0cede99afc"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/RecaptchaInterop.xcframework.zip",
            checksum: "d528cfee060e515935ab8333185b206414265f8e623ddf6a6d92100ba7b6e5d7"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1559034/UnityUbeejoyManager.xcframework.zip",
            checksum: "7662b061617257f6045c14d98fe331e5f86b75a7abb9031b8b614a1803de5489"
        )
    ]
)
