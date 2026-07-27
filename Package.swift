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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/AppAuth.xcframework.zip",
            checksum: "b5977c6cecc68abefed09101ca3e2fdb7085df0b1daeb2eef67c8b1fd46936ba"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/AppCheckCore.xcframework.zip",
            checksum: "98508cabb54e078f50bfcbee822d4117ce584b36b0cccabb76dc255abde160f4"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/AppsFlyerLib.xcframework.zip",
            checksum: "3b77d8240280160938c38bead5875633d9a0b67d62f43b0b7bfa98539db00ee6"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FBAEMKit.xcframework.zip",
            checksum: "087327dbfbd3c41b65081ddf58b9cdd50864567d9bd5b788dbe8d5a362ec7110"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FBLPromises.xcframework.zip",
            checksum: "221a1db3dfce7900819a78e7dab41984ebf1500434de91518dd9190575ee83ac"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "ba3762b4de7c47ef9b1647f87297af1e79b8b044ddc37700c38e2601b064569c"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FBSDKCoreKit.xcframework.zip",
            checksum: "844d95bf2d5d53b6891d8ad2df9932175bc6f01913b3c24b4388ce3d76296f69"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FBSDKLoginKit.xcframework.zip",
            checksum: "3d26c4d3c76677636d9aa016d7bfb94377028e61c24739b960e2f00306526061"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FBSDKShareKit.xcframework.zip",
            checksum: "f0fe79084311c1632eb2adcb69142ad37193bfa51512070d8044681d72a0a58e"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FirebaseAnalytics.xcframework.zip",
            checksum: "5d46ee97e6da9a929b620ad62898501bc2b50bee296cffbd186aca30d5c0d79a"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FirebaseCore.xcframework.zip",
            checksum: "64d57b69fc0b70967f0feaddd61458a7298b9ee7834b0c7a5afefbf49a075b43"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FirebaseCoreInternal.xcframework.zip",
            checksum: "86c8254a28dc51994f8aa4f324fb793788dc445d580c5100dfd4fae0eb49289c"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FirebaseInstallations.xcframework.zip",
            checksum: "8ec59efc33293f2826d32df79e00120a9d67051412374cac5ad78837ba46a144"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FirebaseMessaging.xcframework.zip",
            checksum: "7c0e1e4571a43c905f86a49088b5bdf766ff9ee10ee49331e85cb091fc9d326e"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/FMDB.xcframework.zip",
            checksum: "deb952de7b8cd75ee1eb77dee38eb9a9d437785f6615abe4e963b0c52213c779"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "eda9e047324d31be156219fa581f6815951bd76a683aa08bb0110667fb6004f8"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/GoogleAppMeasurement.xcframework.zip",
            checksum: "2d349215b241cc87b6e72b3024a0607f6390cde9cd5c1e9b711013cc41b07149"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "84102243b0d118aef243322ddb57296a02a9f04da595c3df5f4f51c0322cd2c6"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/GoogleDataTransport.xcframework.zip",
            checksum: "500f530d07d82c7002ee953467dcbe8f5bc6f42bf7788a8b2a7c9e1743de307c"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/GoogleSignIn.xcframework.zip",
            checksum: "95133db9614e84beb35606f703198e18949592b3caa027b1e03044aadca2aa8b"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/GoogleUtilities.xcframework.zip",
            checksum: "80cfdc3ac0fe2ad19487f96008b0ff13272d00d3fa78031fa9e9cb1e08777079"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/GTMAppAuth.xcframework.zip",
            checksum: "4e88317634461ecead6729f66ea462cfaec7da693cb4ba36bc616e4fbb5516cd"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/GTMSessionFetcher.xcframework.zip",
            checksum: "569516bce6aef96efc79d0fba9bae244fb18972610e2eddcc03d68ee787e1d7f"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/KakaoCommon.xcframework.zip",
            checksum: "afca10c9b5535a86de007f7e40055731f4f8aa836a88575df9daa6e153f49feb"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/KakaoLink.xcframework.zip",
            checksum: "6b20aa11538f6ba26e5b27a1d8fd5ea7573aa4a082033771f0f32b7eab0c7aff"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/KakaoMessageTemplate.xcframework.zip",
            checksum: "6ea167f997008d1a700732a0fcd94012981f9b65131262b1524699d653b21384"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/KakaoOpenSDK.xcframework.zip",
            checksum: "5f25734df6379b7900cf67e60d1daaebf36b1b69aa7f7923d90918f409876e9f"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/Masonry.xcframework.zip",
            checksum: "e2ba0378bcd316609398bafd5dd495aec673eecb8bf2fcadc0e556d3b9ed1b51"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/nanopb.xcframework.zip",
            checksum: "8a9eeb9b7ba11a404a6fd2563bc8716aadf095d244b2515723522d241c448881"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/NaverThirdPartyLogin.xcframework.zip",
            checksum: "9cd3ac4003bded2a04cab1eb67250cc933fdf41423410807bde4a97566a333d8"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/onesdk_ios_ubee.xcframework.zip",
            checksum: "b48395af44913eecd8428bd8b5a5c5ab92511c17db70aff5243fb058b6099cd1"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "bb57250d755b124fa5f8888aa40109957bb4c1e15e50b8546417617e8e1b2033"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "4a1e683576df68fbc4c7a3a9c3c4baa975c7f65aa5234a9a9b166b90d1487e75"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/OnesdkBaitianFramework.xcframework.zip",
            checksum: "03510970a4b24dfcef22f6ed71d64d7cac71570543e16b5a255b6844f30eea2c"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "487fdc0f3827f71f44e8428e2543a19c67b13dec6f0f02109784060e3037d86c"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "0b902b325346fa957789a67742d0ea5bd0e34654e1462eb7acd42f8dce0ac850"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/OnesdkSeacommon.xcframework.zip",
            checksum: "84037b4603786b21a230c9d4a2cc30d5162189389266e3b082bd21059185ba84"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/OtherPartySDKFramework.xcframework.zip",
            checksum: "fd5c2ebf392d15b78cb892ead53098ad6dd02d871c9da4a49982b9e823f1151a"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/Promises.xcframework.zip",
            checksum: "f21bdcb26f84039b18f9538774a8017cb2b27e50ffe3d8954a6fa355141ef86c"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/RecaptchaInterop.xcframework.zip",
            checksum: "51244687133fcba69b224ad5b17a43d5d788ff36d0ae80dab07a3ecba2fc525d"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493741/UnityUbeejoyManager.xcframework.zip",
            checksum: "69180f9493951a34ee2386e599e4015f7ec5a4e3b95642b51cfc19fa14b167ca"
        )
    ]
)
