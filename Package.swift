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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/AppAuth.xcframework.zip",
            checksum: "a65694ff819419089a75c0ec1b57b2b324749b38c04f7143268fa2acb24268fc"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/AppCheckCore.xcframework.zip",
            checksum: "0b01dc608d1e43d0bfb34b689c34f4cfe5ed65636aebfd6e3fd04d30f5bf39ae"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/AppsFlyerLib.xcframework.zip",
            checksum: "539151a4a91e32f0bbe370c58c128117a0a85525bd8fd18b35d774f1e7c3109b"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FBAEMKit.xcframework.zip",
            checksum: "b93a3769f88982ea7d42b504aab0aca661f310045ab95f66a7e42c2e5298de65"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FBLPromises.xcframework.zip",
            checksum: "b2f106fe6f6c88f72f8b7f772f9e9d1c13a6ad375cd1c81eb80b78bf160519c9"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "df6493c416516d62c2faaeffd3cd50395da29cf2501366370b2c1d0e631570ac"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FBSDKCoreKit.xcframework.zip",
            checksum: "17f8e0f18b7f9ddca1348f82d2e8a7aefb2178852927c43ad9b0f24800068c53"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FBSDKLoginKit.xcframework.zip",
            checksum: "4893e521f5acc5eb844ba73db188cc5888611d28126dc6744dfd541cf4c65d1a"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FBSDKShareKit.xcframework.zip",
            checksum: "3792ace36df9f29ad902088213913e2860018899ed23c823a7d69c4a0fa0bfde"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FirebaseAnalytics.xcframework.zip",
            checksum: "865f00100c489471e809c45b79b22f403da1f00bf599a15935a453d2919b220c"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FirebaseCore.xcframework.zip",
            checksum: "67108fca9783996dabcbaf396bacb598da851370ccbbc6d17ccc2fe9c7ad27a6"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FirebaseCoreInternal.xcframework.zip",
            checksum: "a4698cc3dc709ae919cc32434db33fa34237a035f3e9f7db691af2daa50c7425"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FirebaseInstallations.xcframework.zip",
            checksum: "c88e02c7d472f79b303075db2883962232624304aa2e64c623a9de6e300953f8"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FirebaseMessaging.xcframework.zip",
            checksum: "89963ae17cdff2ae502afc3ef39d86f864800ec4c7aaa0ec100712962e89c95a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/FMDB.xcframework.zip",
            checksum: "97c9988459fec3df2d36331b48626af3bf61de872cb50f7f11ea1a84257ffd43"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "f6eebb398fd2bc0596325181ca23698990ce593497f2bc2db8a21c3275a27cfd"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/GoogleAppMeasurement.xcframework.zip",
            checksum: "46130fde9ae9c444f0bd810ebf90985f6d60c62dd1e74a881ce20a28117b89b9"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "145ed2f827e8123582b285b3684df519bf6221361b06ec3ba187f414334b60fe"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/GoogleDataTransport.xcframework.zip",
            checksum: "0ffd6746dfd56c0e1eb081d2003b07ac3d3f9f2bd1cf19c619c4ff8021cc0d99"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/GoogleSignIn.xcframework.zip",
            checksum: "089b385f90d0b7f4c667c0578fcc7f600c32544de4782bcf00384fe3507660cf"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/GoogleUtilities.xcframework.zip",
            checksum: "96637d5bfcf0c1cd3b59fc5c272346b8f6ccc10e9ccb9e6151904cdeacaf8b49"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/GTMAppAuth.xcframework.zip",
            checksum: "e9d10ad494d3c7a7faabb72cad2a96acda7fd78e125508a5551dd96320e0c0ca"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/GTMSessionFetcher.xcframework.zip",
            checksum: "c1338b904b4a20563e131cf7fa22fc0ba8d21f28a39a3ceddd026df47d017efc"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/KakaoCommon.xcframework.zip",
            checksum: "5d65b28e560ed19afa7d50602b5cbd2795080736f91af4b706b58fecdd4e0475"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/KakaoLink.xcframework.zip",
            checksum: "85e4ce6b99f09d28119ee6ba3ff423386114b07be04cb9e68cab9af95cc21b79"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/KakaoMessageTemplate.xcframework.zip",
            checksum: "8133ac8a9d16dce6bc15a89b86243661f178a5f2e25d5b11b7ac170fbc43e498"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/KakaoOpenSDK.xcframework.zip",
            checksum: "e20ab4d3a5624d268ce82673811f2212dfb77f6a9b18a1274662feda3aa2d30b"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/Masonry.xcframework.zip",
            checksum: "f1275248eae15f9ae48bbe827b564aea43e19e3e760dc6fdde61e69d32c33b85"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/nanopb.xcframework.zip",
            checksum: "edf092563b7365d958bfc6d700dd89b79580fa9bd4b284c44a5b78beb25a479f"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/NaverThirdPartyLogin.xcframework.zip",
            checksum: "e2eb3437e8fe8c2a3c3d218976aae52ec88ccf6af70538826f7e0ef34b8b438d"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/onesdk_ios_ubee.xcframework.zip",
            checksum: "05c774c5f6331439d76fb55aa548b6448b97b85e4515f7720e21b4242dfd51d0"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "88f18e518efd6632b5682a079f2bd244e3b4032d3bb564e951af0dc7b4bb0805"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "f7f00e1f229a7ef1c01dc611af1b5f8beec426406759200de346d2e8503f80fa"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/OnesdkBaitianFramework.xcframework.zip",
            checksum: "054d9e49683a7a625d0bb5f426b15ee116977c87a013506719619b942abf201f"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "4d98eb0708c5257c5ae33f943d102c39ec8a95ad962879b9a8ce6a2c3099c0e6"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "f27ab37e396a6d5a2f31089a5924069497445d5e519edb1f68926562aad26f54"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/OnesdkSeacommon.xcframework.zip",
            checksum: "c613396cef625797c192ffafdbd8019bc768e67d448aec3c793ce5133abad844"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/OtherPartySDKFramework.xcframework.zip",
            checksum: "6abbcaa79e17b6c2f0f205395f9a0d1394801e252d6e0da792356a07c1147335"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/Promises.xcframework.zip",
            checksum: "f2f8660ec5e5ac478d23ccef03d61de96967d2feb643aa551b2ebccdea0b7e2d"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/RecaptchaInterop.xcframework.zip",
            checksum: "e6730962017b9aba0f7f376b5d863e1a6ed67f97b8292ef6044ebdff08e05b8d"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505428/UnityUbeejoyManager.xcframework.zip",
            checksum: "266e462c945e1862b050a361677c237633339004bd091078a1c9d2df34f206f9"
        )
    ]
)
