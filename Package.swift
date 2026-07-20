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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/AppAuth.xcframework.zip",
            checksum: "ae509845db6a14359e4d309f78b3daeeee757467272e6e80e52cda7d977ed7a9"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/AppsFlyerLib.xcframework.zip",
            checksum: "d8e14559f0ddac4482bb5f8ba55a905c28ba3b57263c42bb7338ee09d39b172b"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FBAEMKit.xcframework.zip",
            checksum: "17404b24fb8180e3cebf8ae6ffe9120c8b0b6ae92b77e5c55020c9eca78ece32"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FBLPromises.xcframework.zip",
            checksum: "a092d1807d19ab91ec1e848fb613a70cbc98282db822da3380894ab654122ee1"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "3d254dbf88f689b32748b8074f4d391c81a01959b40c1370bd9a2d7054c43225"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FBSDKCoreKit.xcframework.zip",
            checksum: "7dbf581f03ab5b03b50bde25177879f48a5b5fadab62f804804d99f556634733"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FBSDKLoginKit.xcframework.zip",
            checksum: "d4d7c2948ce5d69289d7339bad807a996d3d51a1277b785c4865e1e4ccf83d2c"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FBSDKShareKit.xcframework.zip",
            checksum: "1434cfc632ba4f60281f397054ba25ff731535b493a666cb88ebc17a6c356074"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FirebaseAnalytics.xcframework.zip",
            checksum: "c13055c45e54f054f617504805b454b44462d14252a389c918f8eb85c6a55897"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FirebaseCore.xcframework.zip",
            checksum: "3b659ded98f51e932e9ebadd071305a8565c4f575cbf2138e1146406a5ed94c2"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FirebaseCoreInternal.xcframework.zip",
            checksum: "d633568a5af872e51b22028f770c111e640c055746d3541ff1bd4cff78ea121e"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FirebaseInstallations.xcframework.zip",
            checksum: "45974be56d966ddd604c958eaea8ea2584f75204c69f9ad6e7c53829455355dc"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FirebaseMessaging.xcframework.zip",
            checksum: "21c7c607aa9e3ef897c2138b6bf9b4100ca2f73e351e9a59014c3b8bf59b401b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/FMDB.xcframework.zip",
            checksum: "78542e990949bea24db409bdd31ca17200698c2411929de57498120b7670cd5d"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/GoogleAppMeasurement.xcframework.zip",
            checksum: "3df03846df760fa84b561c9318b94b859e2f105274c86e567932f967e4869260"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "3cd422197d9cd17ff9b3b3e9ccf61dcbbc2a2695f4b51c114609806ed0c08ba8"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/GoogleDataTransport.xcframework.zip",
            checksum: "3b0e39d88297b4eeac96eab6b49c2d99ca12a5bbdfdbd9d2e08081f006144517"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/GoogleSignIn.xcframework.zip",
            checksum: "84f9afcc49cccf289ff3858d4aba8cb5c977100cec09ab6060c4e33e028a0661"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/GoogleUtilities.xcframework.zip",
            checksum: "2a61168485832abe60f61cb4379dcf024625654241ab42f9794092f0719f1d3c"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/GTMAppAuth.xcframework.zip",
            checksum: "455ac5c2d4b4bd8fee9a51936b2e25e1ed4e84f1fbeb54a13da8f2e6e9c3c235"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/GTMSessionFetcher.xcframework.zip",
            checksum: "2c87936123144a45cd5ed6d410c196e73aeab2c5f6955d313db1da6767cd7ff2"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/KakaoCommon.xcframework.zip",
            checksum: "c2a725f00779717fe28ad37bb5ef15028f0f776c659cd9712389721834727093"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/KakaoLink.xcframework.zip",
            checksum: "7aede04fc57975b70bb39dbcab89aca3266a5eda7628a0248bd68aa41d6cc0e4"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/KakaoMessageTemplate.xcframework.zip",
            checksum: "2976d330feaded7ae35265f806d2f454e972b1d488d450cfe61110471b26744f"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/KakaoOpenSDK.xcframework.zip",
            checksum: "844c88ba9929bf197364c48a4a80e97be802390a392e6eada03b20c8b5cbbe12"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/Masonry.xcframework.zip",
            checksum: "4109984b3087c0cb16b4c19a3dcfb2ee3b6ac4bf958b9d06f453f0a342118633"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/nanopb.xcframework.zip",
            checksum: "7d5b60294c7f73d4d802842bc109fb9fb51f3cd1c037410ba197d5a150c55690"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/NaverThirdPartyLogin.xcframework.zip",
            checksum: "f7ae719c595ac6e256556f3396c32a96ca592f88ddae8af66622b8bd267ebbe9"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/onesdk_ios_ubee.xcframework.zip",
            checksum: "e3f346db7b4200b10f45e8d8bb6eb93207cb5453b46863896658cb9a458dbd03"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "71ad3f7cd0607ed382ee1418436fd265f4390a7b0858ff24c797182bd966e291"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "9cf6a64076a777a36992cdd115894fa9df90b1ce73b217a60f8d7bf6556f8f25"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/OnesdkBaitianFramework.xcframework.zip",
            checksum: "964c44513240d92ebce103d49a3fce5593278bacd1795de5ab9136c6a6cda4c7"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "147caff8c21d9c0ede9cf0b7a39d22da0dbf98fb861fb80488b307568fd329a7"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9e7b1f14bc3e0e5193f849b42fc9fd977b029f6f4e216d6834b137214c9a4550"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/OnesdkSeacommon.xcframework.zip",
            checksum: "c625e6250e8a3c922215437cdabaf2a306324685b8bf5be21aaaec308ccf9c96"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/OtherPartySDKFramework.xcframework.zip",
            checksum: "9d9c5af60ae9cf023a5025f062ab441d89b079f568aa373abf0822de0b0de0ca"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8-dev-1488852/UnityUbeejoyManager.xcframework.zip",
            checksum: "b534e50a797567ac8e411dcc9f22c90a47fc3974b45d455ce8d19be2b5b4104f"
        )
    ]
)
