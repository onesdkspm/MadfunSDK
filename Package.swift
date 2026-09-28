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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/AppAuth.xcframework.zip",
            checksum: "9338b664d7e8a6b21ef86e6303e6b19eedc808908979f63a0a9e378387ab2e71"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/AppCheckCore.xcframework.zip",
            checksum: "9cd7ddf73090d3215f205fc4359ba8b6bd60c48b78a2dde88d63ab1245d4a323"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/AppsFlyerLib.xcframework.zip",
            checksum: "e39724be8243f46da660b52e8bb718178099a4aea965b555290ecf9c4c91ae9f"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FBAEMKit.xcframework.zip",
            checksum: "ca8a7d45e529808bcdb9ccc6342825d7bafd3be9beace4cdbaf70c3b6279c367"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FBLPromises.xcframework.zip",
            checksum: "d7bdd0f5a4345a59ee807065fe3cb11227ff10862e20414073c7828235de3625"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "45ed2a175a1a064d14e825decbb08dd2543ee5bc37c98167e346853d8b1502d1"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FBSDKCoreKit.xcframework.zip",
            checksum: "64b199366f6c476da5fbff372bdad1ec4c350f1c0b3ba1eaad2d00f3aa0b8916"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FBSDKLoginKit.xcframework.zip",
            checksum: "3d2479179fddedd0b2a9967bb5ab3eb15b9f04d48ed8d66c94478d92aa844d9f"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FBSDKShareKit.xcframework.zip",
            checksum: "6c6545ecc19dcdeb700228974dc4258d792a72c9bd7bffbcc5803f6c665174d6"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FirebaseAnalytics.xcframework.zip",
            checksum: "2b36a76c22cd579c2f734fa75721e591e34242c5477803af31b64ca3084e1279"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FirebaseCore.xcframework.zip",
            checksum: "89aa3e3cbd6f37b402bf63291206611352b2976be95d2de02d4bdd82e029e25d"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FirebaseCoreInternal.xcframework.zip",
            checksum: "459f7dd7b0ad90cf25d270d38f60d57164412299983c85d9535c322476e04384"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FirebaseInstallations.xcframework.zip",
            checksum: "746d6569b9b3edc9910634658352a254e8b171af659a8a3488e81199e271fa1e"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FirebaseMessaging.xcframework.zip",
            checksum: "941102c57d347de12c336a109c2edadc7971f37e03b8b7bbe6179308a3d9a906"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/FMDB.xcframework.zip",
            checksum: "4001a04253ab1a54a7c9a97461e0770030c412fc8006b0ad9497f0c475e5a81b"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "05e32edc76834e7409f6038d660452ebfbd4db7a81fc53e758477c6ef440642d"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/GoogleAppMeasurement.xcframework.zip",
            checksum: "5acc90f27f5e546cefd117005bf4aa4d0e5fcd52a84653a2fd0286b9da7d6ac9"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "2190df8169523633d6d2edb54e0a5bff70a8dabb5174befd57a122ec800e1b44"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/GoogleDataTransport.xcframework.zip",
            checksum: "fb6af276a6831c9847517209dde8f000d36dc213b2dfbd116421d48dd3504a48"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/GoogleSignIn.xcframework.zip",
            checksum: "f656956279675b92c0d12daf3f07b82dccc46cbac547b7608dc1c8d7535349a6"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/GoogleUtilities.xcframework.zip",
            checksum: "36752ec4072cea90474934a6b7f54bc3768c272a5566eb99869d35e174a261a2"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/GTMAppAuth.xcframework.zip",
            checksum: "52ffeccb5900627cfa76c867915bfe419bfcbdf8e0fcff8cffc0f11721958886"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/GTMSessionFetcher.xcframework.zip",
            checksum: "18df8eb825ae23beda3c115dc88f5d20b453a0e90331ae15d8bbee3277eadac6"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/KakaoCommon.xcframework.zip",
            checksum: "a599c2e4b2d0465e93239ee6b6ed06a5359242555b660f31e6864cc64b88a465"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/KakaoLink.xcframework.zip",
            checksum: "a9436de08a71d8a7d442dd8fab61ce8c7ce9bb72df5e120370f1829b5f2a4b55"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/KakaoMessageTemplate.xcframework.zip",
            checksum: "77d9eae537154190f339be8c5e67284e2d3c4277fb836e24fa8c2456edad75b4"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/KakaoOpenSDK.xcframework.zip",
            checksum: "7465090ace4efcb1c9d8d469ec4421a5c1b29bde047f035aab2dbddbbe6b0ccc"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/Masonry.xcframework.zip",
            checksum: "4877e82d473ce5e2e6e1d95fa529d102cc50982fd9744d708da9ff064c1ae6f7"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/nanopb.xcframework.zip",
            checksum: "345fbf0ca4306c03c5b63469acd10172f9a8ee4e127a99e8d265e4684936d348"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/NaverThirdPartyLogin.xcframework.zip",
            checksum: "812e262373728e5830a600da78684d42dc463a3a53ab20b4f6cf2a03a6186aa8"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/onesdk_ios_ubee.xcframework.zip",
            checksum: "4e3efc6fefb47209b5a0607f1e78e9095ac1f056c4a7b2e583850e25f3d817e5"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "3682123bf9d8d779f6d67ad5c9e309079e201214310829f62bd10be94ece1fc4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2fb526718e034255575d3fb6c2a77467202cce4e0074550095060b84a94d56c7"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/OnesdkBaitianFramework.xcframework.zip",
            checksum: "d09c11a680a06c64af976623a4d31c7fca75bbd19665e34947f9c4cd82c5a6f1"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "c0728b8fa527a263742a127f8f126bc7147beb893e25c74a159546ce0cc9d3c1"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "cd246b2775d27934459f9e39651110ce0c9a2256622caac8d3d186d907465edc"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/OnesdkSeacommon.xcframework.zip",
            checksum: "f0cdd81f95a7366e175f7e2a2a3179d8dcba364a066a0658d1236aba3b0c6aa6"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/OtherPartySDKFramework.xcframework.zip",
            checksum: "dcc4be4b144e097ee777475c656937eac9777fc3bace03f9d1e5bd31cb689b91"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/Promises.xcframework.zip",
            checksum: "9f3ef79c597d6c497ea6bcf60f5dc802cd70f333d8afbede31d36d5ec116b9ed"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/RecaptchaInterop.xcframework.zip",
            checksum: "9d2616701a73879a737e1b2a3d78e0bbe63bb85417e3366d85429bfec7d99c48"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1/UnityUbeejoyManager.xcframework.zip",
            checksum: "771633c0ca9c8f3e72d2b1a0a51158208a030b06f4c68fe205476f9aed21f382"
        )
    ]
)
