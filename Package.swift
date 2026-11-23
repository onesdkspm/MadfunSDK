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
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", from: "2.0.4"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/AppAuth.xcframework.zip",
            checksum: "de8512bfedfddd20d1f22a4258a64f1404f4e2f7882d6fce5fd36b32c8a0240f"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/AppCheckCore.xcframework.zip",
            checksum: "88f5e9a3883dd0eb8e9463b194f64c94b49636362c2962ee6a8d8b1b302a2744"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/AppsFlyerLib.xcframework.zip",
            checksum: "5953d0fd2f4110d91e0754493c78ef922f70ceb0b355a7f773c6a082164d6109"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FBAEMKit.xcframework.zip",
            checksum: "550dbd15141efbe1ae12c01fa2c14257a8c2b3a9cec074d545a753cf3e3953da"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FBLPromises.xcframework.zip",
            checksum: "47c5af93099c75f903cbbdde646f1a85e1218f6dc2d4b528a95ee4f012beed51"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "2055a7613470942b5f6102d06940632192147ab1dcac380f33e579f15cf37096"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FBSDKCoreKit.xcframework.zip",
            checksum: "225a9201468c63c52311d1f1b8e58b74890dda85243a9722946934f8228b20e1"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FBSDKLoginKit.xcframework.zip",
            checksum: "1988f77dd58c6cc1f3587ee09b93cde09aeb76f440ec870a97425a654bb80fd6"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FBSDKShareKit.xcframework.zip",
            checksum: "def5dfba50e6c2ee1eb489b83ba824d604da44b376df17cefa2e583987ef6c5a"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FirebaseAnalytics.xcframework.zip",
            checksum: "d16479fc917baa1c8ab0eba944e944fc84faa71d3fa583751f9d4d081d96e13b"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FirebaseCore.xcframework.zip",
            checksum: "3f7eee8e328fc6f9c90820542bfdf55cea90c0b0195e6e5db20b0941764c27f3"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FirebaseCoreInternal.xcframework.zip",
            checksum: "a626118a70087e666a4f58d9f7ad9f47fb6f553caafa582599157c8dd7fb5aa9"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FirebaseInstallations.xcframework.zip",
            checksum: "dc2b2c82ad4fc51091765a7427bbdf5b943785c314cabd2615ec40f00be4e4af"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FirebaseMessaging.xcframework.zip",
            checksum: "703f2a300b590f86456e2208bda3a862a33e3cea950446d5ab0b00b22437ad67"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/FMDB.xcframework.zip",
            checksum: "c5b78f4c8a3077e426dda531c97d1e12c1f0261ddfe34520ab806062aa769be8"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "b4b2d7274a86e1b9b3314a6cca0fa8c03848e1b5f29aa53f4253b38c6023960f"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/GoogleAppMeasurement.xcframework.zip",
            checksum: "b68c85e7e07db2ace045e3b6cdc2a612bf16072909c43c2247a227f337b66590"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "7d70b26e422311c5cb4e995bc5f87bad26d7e0a1dd940a994f164c60d875ecba"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/GoogleDataTransport.xcframework.zip",
            checksum: "1a3db60cfd0b79bd9d51e732b027e1542b4eeff44f89f09f2fa0cf46432e1c3c"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/GoogleSignIn.xcframework.zip",
            checksum: "09dc672fc4c0739478aa14008f786971b19885faee2dbdd8e33a5f50aa39f44d"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/GoogleUtilities.xcframework.zip",
            checksum: "470ae127e8531475a204f37d926678e74e3b21ec3eb9c91246c7ba8a6222a325"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/GTMAppAuth.xcframework.zip",
            checksum: "96370db028dd5613b73714834f614bbdfbadedfe1832ce1dbf848047d6734561"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/GTMSessionFetcher.xcframework.zip",
            checksum: "70999d1dadef769aaac943f1270b98478622ab62b07bcf964051fb74d2490448"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/KakaoCommon.xcframework.zip",
            checksum: "11530dac44e2a2c37658dd391a131ae2fa3c9098442f6593040d231be51ede09"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/KakaoLink.xcframework.zip",
            checksum: "66c5613d0eb33ead0caa9803716eb8154a2c295cd199dba0e07b638f8448f6da"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/KakaoMessageTemplate.xcframework.zip",
            checksum: "061603653dfbda3398f5816b6bad864940a3333a8119ca22572d2281c760285a"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/KakaoOpenSDK.xcframework.zip",
            checksum: "028a45fed45456222e4137a85aaed6dcf1c04c0b18464566c9bd7e3b08b1236c"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/Masonry.xcframework.zip",
            checksum: "936a6690f4ccf5583f3a41d673830228bd48a156ebab176e5b5447bad1adfdfc"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/nanopb.xcframework.zip",
            checksum: "d14c20ab6b020261e1aedeec9919b12c4f2f71fbdf1fcfdc5be5044e14fa263c"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/NaverThirdPartyLogin.xcframework.zip",
            checksum: "9807bd9f30ec76d8f13697f86ac81a5d8333c910c0152867c2909743926dcecd"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/onesdk_ios_ubee.xcframework.zip",
            checksum: "95588b754bff33417978b2ec2edd78dde7bd11e47d5f483337d8fa9191786b61"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "56edb51bae0657b53480d81be331d55a9f51ee97582dbc469010c62778132ce0"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "0989d76910635bced2d04b2d4d2782e751e0b48a3797e5be70f396218d21f7c2"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/OnesdkBaitianFramework.xcframework.zip",
            checksum: "996873eb74cafed5a986d08c232780ccc6d8f38cd0f3c6147ac9e25e8a5292f2"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "899461c4ba867ce0bc996f487a2b9803fab2158b6c15ae236ffcbc987ab5d9ef"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "10973458fec30811d85284f386fba89eb69849dfcbb36d1ad6f6cac536f2a23e"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/OnesdkSeacommon.xcframework.zip",
            checksum: "14b9a43ee4d245fd312235918284bf38a8227988a1a9fe706d963f3633980f92"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/OtherPartySDKFramework.xcframework.zip",
            checksum: "d7a2a322c27e87003ab9715d09d3be0680cc7c9e70dee2d45c87030dd6652faf"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/Promises.xcframework.zip",
            checksum: "84f7144af72b8e9f245f159b3ac8da0e6abb3b9b5dea9e01c97d1d4e8f54b1a5"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/RecaptchaInterop.xcframework.zip",
            checksum: "e2267c1c768b087ac369666f72dced9cf0f94b19dad59634f605306c3c48abf4"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573436/UnityUbeejoyManager.xcframework.zip",
            checksum: "4ccc8ce810f7f2b717335721747402fec07c25e153fac89435099bc43203387d"
        )
    ]
)
