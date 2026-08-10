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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/AppAuth.xcframework.zip",
            checksum: "a8fc23b8a3c3f7f36ec0278564b84a6a92430e51b30b2d68d6963bb1bb81e685"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/AppCheckCore.xcframework.zip",
            checksum: "0e725f446249dddbb3a2227ebf0beeda6facb1c1f6b3a058a0c591e9bc874744"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/AppsFlyerLib.xcframework.zip",
            checksum: "bf076dca24580524a864872da9b63fed7843f232b1ece23ad5a3f0a0928d9c3d"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FBAEMKit.xcframework.zip",
            checksum: "3140de82184b63527546c9e74bab596df2dd0e98898d8599911ca43790389723"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FBLPromises.xcframework.zip",
            checksum: "1883c8d899d43a5065baed756bf022b077e59ecddcac53e43042e2e94b3bff49"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "7759cd1596c5f1a493fbdd2e05fed4023692180bdb12f8f1d5600da700cd1e1f"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FBSDKCoreKit.xcframework.zip",
            checksum: "fb809ca297f12f460950168b3f895b8ecd557bad5ea56323798777926e758173"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FBSDKLoginKit.xcframework.zip",
            checksum: "057a471608033c09e29c2ab8e5746c3c074b4a60efd4362eb074548fc678714e"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FBSDKShareKit.xcframework.zip",
            checksum: "c95894e4dc27c6740fe81dfd18b85bd55c6267c8f48f745b5adeae79321d6904"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FirebaseAnalytics.xcframework.zip",
            checksum: "92eb78112fd80f623273e9d18151dc2a7f81a95922bb608ecb5187946ff45b86"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FirebaseCore.xcframework.zip",
            checksum: "71bad91146c6810a7d89f9eabf1ea446c44ba3553b2761d3deb1d611a0d77ac4"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FirebaseCoreInternal.xcframework.zip",
            checksum: "3e0a8aadf1e29461389cb17a4dadebdffa9b88d5c0b0f5c25e83c4679f9e06fa"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FirebaseInstallations.xcframework.zip",
            checksum: "dc209185d4aaedad658d6b26c9a43dfe65d74b0961f5223e606abdcfe50e927f"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FirebaseMessaging.xcframework.zip",
            checksum: "a7e70be00c106def1d12478974263696e45fc8479c5f4f18c880a6e5722ed231"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/FMDB.xcframework.zip",
            checksum: "07b4e9222a3330bceaad1ab81bc703a4e26bfbb84b19235fac54b9c320733544"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "d6509cfb01dd76cd8760b3be3ee583070618300d2ea0c5529dab3261cd1205f9"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/GoogleAppMeasurement.xcframework.zip",
            checksum: "0def8b6293c6f43cc0bb77595ec56b3c8b8580f3807c51f7a8f0e1d3b67ced1e"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "9b71a0799d070d263039d6e38695a4490cb892ff37c6c435eb6f95357b166dc3"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/GoogleDataTransport.xcframework.zip",
            checksum: "9baf77bb2b0e93e1f15f2819373e38593f33bb80934b8363338ff9eccc3275dd"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/GoogleSignIn.xcframework.zip",
            checksum: "5a3ffa43a5cb04bc8a62c757084ceeac8dae95f160ae373480ef9fba0223e599"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/GoogleUtilities.xcframework.zip",
            checksum: "da6cb5a84697f1faeb1ae6651b46d2e8f5d6c0fe4eb0946fdba9ec5ed16d1c6f"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/GTMAppAuth.xcframework.zip",
            checksum: "a2366d58dcd334695d3a9b72a9ce023d50f3a837bad2f0ed78e0b5cfb7a358f6"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/GTMSessionFetcher.xcframework.zip",
            checksum: "b27f2aae2f569002cab721b278d53275ac177c17190959c37c89c149fa824669"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/KakaoCommon.xcframework.zip",
            checksum: "5a19ff2e87712fa35e31affdcb7ae8f6d30b28ee3169e6975a0865daa003c504"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/KakaoLink.xcframework.zip",
            checksum: "ac2fcba2729804d7858b45e83a4473ee12771c6ed017300ea408aa3e08c74c85"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/KakaoMessageTemplate.xcframework.zip",
            checksum: "43789ca702e4cc910701a61421b177a815a5ae250a6ba6d3179f0975da4df3bf"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/KakaoOpenSDK.xcframework.zip",
            checksum: "10b118d68907fd6217e8c9fd3c9d49bbe141d9156759bef81ed84aaff33863ec"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/Masonry.xcframework.zip",
            checksum: "d2728e35f6e49f4800ef4dc5dc52e85613d0588ad561590c6fbe8d254cb804cb"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/nanopb.xcframework.zip",
            checksum: "d4d4980427ed0023a2ed5aece63732de8ba25f296416f5eca385f5f495235618"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/NaverThirdPartyLogin.xcframework.zip",
            checksum: "0be88cd16db337f4542a4b307bdbb2037d9f94e76c6d5537d2e077faa1af4352"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/onesdk_ios_ubee.xcframework.zip",
            checksum: "c9d3c2285ad9717e5ddb30eff1dad07a0aa4be47dcee54ec6ec90e6e0ceacd59"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "9ff8f7507a62d8907e53e2e0899cc6ce78f0631004cc12b1d46f879ffd7914fb"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "103707be378a1cfd578e40f7d986d6797218ad2deb46e9f9bb7d003200e4f718"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/OnesdkBaitianFramework.xcframework.zip",
            checksum: "679ce68f6fa0ca0b4ce6600c5a7f40c39ad634ad35fb5bdc74aba01547d90f31"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "26e4fd304fdf61e5bbb44eb73e5b54d045c969353bdfc209e6925fbd93323316"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "1d0c6a6cf79b715bf20c11cd8e65dd087c63ab374362b1580399b5d66a1f06b5"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/OnesdkSeacommon.xcframework.zip",
            checksum: "a7e70485e6fb96bb4e897f85d780f36840b3fc7ec835e77313161609319ac7f6"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/OtherPartySDKFramework.xcframework.zip",
            checksum: "89c74ec41bbd03bd785beef566561db82a921f66700b7f7c37eefad8f89aa426"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/Promises.xcframework.zip",
            checksum: "e32bf8d92c0a727d6e9d71d31a1cb19614948840aa698ed14920f124fe39dd84"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/RecaptchaInterop.xcframework.zip",
            checksum: "900c108bd9c782685d8d5c546dffdb9d15f1b723eb984f6877a4fc3f21823719"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1503689/UnityUbeejoyManager.xcframework.zip",
            checksum: "064606c6d71a35331d81956a2e598c363cc94639a69ab07802cd17e27589a7aa"
        )
    ]
)
