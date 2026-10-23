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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/AppAuth.xcframework.zip",
            checksum: "bafb84be918218337495c39f9dcac0fc62d64634b6044bb0cbca959756648ed4"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/AppCheckCore.xcframework.zip",
            checksum: "01e517c1b6ec6aded30d972feb3f035b7a6131ef091f6227f1eb92a66ce16dd7"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/AppsFlyerLib.xcframework.zip",
            checksum: "d28d1f52c323ba07fa5887da56fddd00422109c436a79d2f59e7e71a90e2bae2"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FBAEMKit.xcframework.zip",
            checksum: "13ba1776b99ee7b8c48157f4e6e4ad8ca30472ac45c715e06afe062d6fc0a85e"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FBLPromises.xcframework.zip",
            checksum: "4c77ba0804aec7323c835b51d00403ebaef62d57ff1c033cf5195cb470ce579b"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "6ce3cfad8ed5dd66b398bb8639cc62868ada8fa0143ddef10c1de76640f59a9a"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FBSDKCoreKit.xcframework.zip",
            checksum: "ae5e5e7173173e5fe3fa2bc5782a971fa3fb21bffaab887231bbe7c87eeab6f4"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FBSDKLoginKit.xcframework.zip",
            checksum: "4b69a39889b280321f7c60c182135911bc34256bc2c79762e6e5492698a3fa86"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FBSDKShareKit.xcframework.zip",
            checksum: "10732ce109be655df93776bfff74b8c1f7bd58d9c17fc13c055afebf943f7f35"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FirebaseAnalytics.xcframework.zip",
            checksum: "6110249864d72137e0ca44804eab040b59782f62e9b30eca7d88d77775a72e7c"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FirebaseCore.xcframework.zip",
            checksum: "2cd315faa9fdda8393449e6ed0c60b94c4d095a801c0c65cbc5f3df5e11e1517"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FirebaseCoreInternal.xcframework.zip",
            checksum: "f100a1c29cf094b98809836e9d27e3e59ffbccf73619be84248f1093fc88331f"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FirebaseInstallations.xcframework.zip",
            checksum: "78d4c34874da98c9d2d6469abc09f9c78295560a839764554d022a76744298f5"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FirebaseMessaging.xcframework.zip",
            checksum: "bdbb11ba936ca791addfbf9b6b562140df6d768bef59cfe863dfcf6aa46c038a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/FMDB.xcframework.zip",
            checksum: "21fd09525317e1da89fa0c25debd9ca439adc3098eec35a95118abf108512881"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "190dd340900e5ba7e61bd79a42f187c38607fe9af2ec3b5bef70821283906480"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/GoogleAppMeasurement.xcframework.zip",
            checksum: "ba9b297962b9aaa8c801aaae0efd9b0d9720077129c4bcbe8959583500a8fb79"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "8988d52f1300d0da5951a49ee6909f5068a7a3225568012e7745e00d5e37ea75"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/GoogleDataTransport.xcframework.zip",
            checksum: "4be93b763871178a96375cf9a03bf678a59f4da9210cd4a9537286ef659888e4"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/GoogleSignIn.xcframework.zip",
            checksum: "469c98a668e68e4b0496de8fa3de62f5b7b9fff635233c41493a7854af3e49e8"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/GoogleUtilities.xcframework.zip",
            checksum: "372f308f1c4d1ec4b9a5b422f74201cd0a299f3cb82c1b1c06394783841c2fa1"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/GTMAppAuth.xcframework.zip",
            checksum: "11b314cb1cf700a7776bc25dd73f216e82065f13254b5569d50cd901f7023a41"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/GTMSessionFetcher.xcframework.zip",
            checksum: "b940fb6e8181ede90f04d76ca2335b1f1c53081428b5829a603144b6c8098d9a"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/KakaoCommon.xcframework.zip",
            checksum: "d583d991b033314ecfe70538267498db9a520c7f051fd53252fe90c8d6500c92"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/KakaoLink.xcframework.zip",
            checksum: "4217e8552173c55f4fbb5d5d2ff09f4721a68ac200e5fc021f8590a958599797"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/KakaoMessageTemplate.xcframework.zip",
            checksum: "2f542179036a80bfefb74f01ac024d4adf0061bff28ab3800fb1770a1da282eb"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/KakaoOpenSDK.xcframework.zip",
            checksum: "82fe6a8917ab52d53659f52b9e12965a39fb984f6bf0e5e5bb4ab1041748be62"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/Masonry.xcframework.zip",
            checksum: "aa056f2c12981ab6b52472fcd0ac23599390c9f2aca3a793d3ada66c0ec85072"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/nanopb.xcframework.zip",
            checksum: "6e373b48466e4f2d94cf70c26eecc6f6bd2c51983f4dfdb2947ce0d6c2649705"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/NaverThirdPartyLogin.xcframework.zip",
            checksum: "d08d7b07c35bd4c0e6c503cf97a4c85e8944363dc685f3c5f48738b98d586ea4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/onesdk_ios_ubee.xcframework.zip",
            checksum: "f8381f752b189c01ac37a86edb208e35e9b7859806c6b9d9142bac6aaffa4d56"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "e5ef56b2cab3fe9b113af5b0f9bae416361712ce0cf8793a0dec4b7a3b984fdc"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "384d2ddd5a7fb4507bf60c46369d0bf4f06744b3b194d62baf0514c075c69b0b"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4682275c92d3120b7b5ca1d94df7be86e7dfb77a6aaf777ba8efe0c6f5d32f3f"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "eddc4b214eea6e49a71e067abb49a0d7cc9e431045aac969a7b0030ef89b3c9c"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "70849d5d24d8f78daed0aa44ce6afaece45f2c7b30c9f2894c1e35f4edb6f147"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/OnesdkSeacommon.xcframework.zip",
            checksum: "cf9554712aa760ab24e55ba06ef4568994ef3c90d98e12405ae7c545b68b720c"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/OtherPartySDKFramework.xcframework.zip",
            checksum: "166431c0c6c73415677c0f985c1fed8f8ce341bcaf252a3312a58349993abcb6"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/Promises.xcframework.zip",
            checksum: "713ccc1fd0121350843f51f3a9d929346391f67589ae3ded8faae15607e2e956"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/RecaptchaInterop.xcframework.zip",
            checksum: "fd7206fc3d1a23e3b89a9491cc07ab66e8cf51dc9edc5e9511ee819d8215ca3b"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1552518/UnityUbeejoyManager.xcframework.zip",
            checksum: "92edcf421782b47dfdc31f232bb50fb415bcf1e52431d04b729fdf695d9af7a5"
        )
    ]
)
