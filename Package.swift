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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/AppAuth.xcframework.zip",
            checksum: "6efa470429e4fadf56c98a18c08093f3deca89c60bc271fe273f0056d6ca17e9"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/AppCheckCore.xcframework.zip",
            checksum: "4ecd7d88af1de113c3a0c6d78420f7dbfd4d8c4424cd91dd2a0918207e0ae555"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/AppsFlyerLib.xcframework.zip",
            checksum: "ece3c2ad05354ff0f11de00d91a7ff62ec370fd746c6aed486a1c341ae51d470"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FBAEMKit.xcframework.zip",
            checksum: "0d6539c69c2cb6b3af56279bfb4cfe6ec8d8b7da0464cfe9c053440bc634df2f"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FBLPromises.xcframework.zip",
            checksum: "54e94251678aaf596b3268e986b0e139e2a119ac7a01b1f226a7adf65a7eff11"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "672bb8f1feb4554ea36e5e56482d2c79b33c7723511c62715e16c569542a2fef"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FBSDKCoreKit.xcframework.zip",
            checksum: "189e3c293d9ca36914ed8666ca582eabf2dd446b065880ffc9b7904a55539605"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FBSDKLoginKit.xcframework.zip",
            checksum: "7cbc5143371f78c1b351621c87b2db1dbdb65ca4f8d6059be596a56194b3ac19"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FBSDKShareKit.xcframework.zip",
            checksum: "f057d1b973fb6390825c40bb1dfea6ac69369d99ce5471f45a7319340e65daf8"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FirebaseAnalytics.xcframework.zip",
            checksum: "2e5c6b7e36102b0545e1f88af4c571698830b0ceed0af505d05b276db3a2236e"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FirebaseCore.xcframework.zip",
            checksum: "2a9d617a9806f388dfba51aab020003958d5eaca2d1ba3c8bb8f66e7c60b0cab"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FirebaseCoreInternal.xcframework.zip",
            checksum: "bb7492fd71aef1225a31a83f5604809951d76357e8410d8adee9fcc41fb0f243"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FirebaseInstallations.xcframework.zip",
            checksum: "f9b117330950fa483e2d221d945c6ea8a9ee99a214318d914854ffa9d7c35e66"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FirebaseMessaging.xcframework.zip",
            checksum: "2017894d087b33433780038233b35dbf3386ed6374cf4f0062cac2568e31ce63"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/FMDB.xcframework.zip",
            checksum: "8fd626cecf7b55132a451dc325e874f6a519e12c45af18c7f5a16a78132ac79e"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "a6ddedb5f05a5471839ff89444f1cf3ed7216b300fc60c766a943462e83ad513"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/GoogleAppMeasurement.xcframework.zip",
            checksum: "59653b99889552438d1c2c8f20221982dc618f3a6d566e8d00c8a07bf2bcf55e"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "876fcdce4aad8c6481107c3297f65b6bfa6b40f99cf71d26a393d23c17e6ca91"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/GoogleDataTransport.xcframework.zip",
            checksum: "7998a466a28e9b464d1cd27ce13cbb3d9194010abe14483a344bb591cde828b0"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/GoogleSignIn.xcframework.zip",
            checksum: "67bbe12255525717bac4113e50dd869a0d31bb676b642031ad9f486175bd4780"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/GoogleUtilities.xcframework.zip",
            checksum: "a1c0974d9c4132892766b35a5d617dd7c28bb7d85cb8c7949362418d6dff857b"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/GTMAppAuth.xcframework.zip",
            checksum: "bdb3997b5f3ecfb736fe2b26253ca4d1d928a01c2c3ca0d1ca4e57766a8265ea"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/GTMSessionFetcher.xcframework.zip",
            checksum: "11ad6dcf330e983b413d13601b0d4d758525809dc762c90be4aab0f785710775"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/KakaoCommon.xcframework.zip",
            checksum: "dca07e490413776ec811c4e8b19feb0762a0a623a42984fa97de5064a67c3037"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/KakaoLink.xcframework.zip",
            checksum: "56c9f69cd2c46c9a34b112e7bf4e57ca7501720fd917f47efeb64f4cf5efcbbb"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/KakaoMessageTemplate.xcframework.zip",
            checksum: "3491b1bd6fb044302bca5b58901c6c30e20b181063e20780e42733afa0639458"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/KakaoOpenSDK.xcframework.zip",
            checksum: "3c24bcaa5b79338ac301962ee2754c097a87caab608b1bf8d5eef93df14725f6"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/Masonry.xcframework.zip",
            checksum: "b824698690d261afc0bea75cbae3f2940c8cfcba414fd5417601dc721d7c7ec5"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/nanopb.xcframework.zip",
            checksum: "932a46c7533ec58a6910544c1194845d97bf5a6b7235efc1e016db23b25ddf73"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/NaverThirdPartyLogin.xcframework.zip",
            checksum: "fcdeef601b5f69979a21dc7a8b9c9680c6d0af4002638523351e91bed6aa36dc"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/onesdk_ios_ubee.xcframework.zip",
            checksum: "534bbb7321e7abb2fc2b24d6b0b7007387a7893f653a557435e73b9251b3a807"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "d043eff81f75ae2417ae098027407d093a3735ab8c58d3aabb966000160c3174"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "9d1e26ad8bafda5611abceed4c9f1d277873a61d79116c2ad560ca73b8332a81"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/OnesdkBaitianFramework.xcframework.zip",
            checksum: "13e6a80af3d080203e08fe3f52afc2274175b20e8e40aee94f6283402ecc25f9"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "7ceb4d75ce11f59a04d20c6a559d0e22bd49959d390e2294a136af21882e38c9"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b03309aeac2807855b326fa7090789bbd5064bf406e51466691c7d610ba0c67a"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/OnesdkSeacommon.xcframework.zip",
            checksum: "016e575ac2f189991c40e97d4d9d21713b49a77170024411c49aeb947c33a899"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/OtherPartySDKFramework.xcframework.zip",
            checksum: "9404727888c1d70fe6c6751f629cad144a0ad0a3059a5087dd712d060c9af128"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/Promises.xcframework.zip",
            checksum: "8a69db220d98b955acdf202aa8e8a38b42f548602e168f5e78d9b12d0bc35510"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/RecaptchaInterop.xcframework.zip",
            checksum: "51bf8cc37a708739f9df3f8ad3666579457a5ba74161cf4989bccc3f4d9f8a88"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1494653/UnityUbeejoyManager.xcframework.zip",
            checksum: "9b3006c287f08131a22f152810af5f76758d9a9818a96c08ba6b0b7994542775"
        )
    ]
)
