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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/AppAuth.xcframework.zip",
            checksum: "60a406bae6418156746d2ec89a89348f6512a0e5c09a2bfb7007cd34fdbcbde2"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/AppCheckCore.xcframework.zip",
            checksum: "4c48e60f3082f8ae5e0208fd46f9b15131c73c62229330f82f6aa11850dba9eb"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/AppsFlyerLib.xcframework.zip",
            checksum: "ce9ba1484d4d7c32bbe2f84396a10df2f2236b80ea7aed2bd234ced2a357d0e9"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FBAEMKit.xcframework.zip",
            checksum: "019260855786db245c6c55b665916ce84c07f9c0fab1596e55fc5c56f5357561"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FBLPromises.xcframework.zip",
            checksum: "cd11ada8d258c147e252575f2de922bdb853509789badbb097775b77afea3315"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "c3f171c03da896233c55bfbd332207dbff4c00dc36f822de4e92e211d1049f1e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FBSDKCoreKit.xcframework.zip",
            checksum: "5bd7641f81e0d418af64759cb874db4cf61e52bb7e4bdcef3415a15dfc529651"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FBSDKLoginKit.xcframework.zip",
            checksum: "fb86185792d1e51dfcddd37562c779ac69f79da950054dfe8cdcd95c8b8126c0"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FBSDKShareKit.xcframework.zip",
            checksum: "c2bacc51ba1c3a0f6e26a9b8b4e730d5872c873cf9a0721ca0e8a24feb6542f1"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FirebaseAnalytics.xcframework.zip",
            checksum: "25a3c868244c040befb1caf0a13e8f769778a3368262251260aafa6807a1911a"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FirebaseCore.xcframework.zip",
            checksum: "71103ff497ffbfcc57b24a75841f152e16a23cf8c29cf13b58da7a46d866fbdc"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FirebaseCoreInternal.xcframework.zip",
            checksum: "27a6be2a1a7a2d9bd365d36755a3e832b01c3d340fe3121eb316911b1b1387ee"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FirebaseInstallations.xcframework.zip",
            checksum: "c579a437b16121ca9053b5c1bc22d1e15b0958332acbb7db22436738f90297f4"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FirebaseMessaging.xcframework.zip",
            checksum: "6bdf6a2f42c6d68a1825c24fb33b01b761c5b45fc12493d0112a0ce1f50a23a1"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/FMDB.xcframework.zip",
            checksum: "1c35ca79c0c60aeb98cea0bab86c36000a4ddf7a3bddb5e1a1050cdc58c11835"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "5ada1041dc016b7ca5283cf3700b0aaeff1f0943167da23cf9548a277c4f36c7"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/GoogleAppMeasurement.xcframework.zip",
            checksum: "e095cc6b69a0cebd6b559da859684e91a2c8f543b70edef3122771ca55dee970"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "cf290b5cd28961f7d074fe04d447da14cd64b90bfeec7458c97d1a617a2276a8"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/GoogleDataTransport.xcframework.zip",
            checksum: "fd1dfe472bb3d378bb2662194eadfc6bc407e0ae6752bea26aa664eb493e547b"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/GoogleSignIn.xcframework.zip",
            checksum: "636041d9fd3ef8b6c6549278a5632ab92ee092b69aae08f324f7509600ea553c"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/GoogleUtilities.xcframework.zip",
            checksum: "ffcea21e13f9a8c758f40d0e582503884c7937919450a6ebd1e0a475f7b069f6"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/GTMAppAuth.xcframework.zip",
            checksum: "70f05273bc41d8eaefaab895c980df0d1ad8672bdb467f2339fb8bf288b0c4f4"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/GTMSessionFetcher.xcframework.zip",
            checksum: "aab6b081f47d8a937fe9b209e791dd8f6a8fcd220c81cd29349373731cfa3c7f"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/KakaoCommon.xcframework.zip",
            checksum: "135b85ff4fe60bae9ccd4a74ef48299488d03c9ea3fded7b4e09ae6e24ce6f7d"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/KakaoLink.xcframework.zip",
            checksum: "689104057e517f89ff51b14953e280add6e0f188675d31c0e6fe2ffd0450c547"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/KakaoMessageTemplate.xcframework.zip",
            checksum: "53a428a456ca77d7ea6009c2cf6e4498de32f610b7d831bb8e949d57fc9b4191"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/KakaoOpenSDK.xcframework.zip",
            checksum: "3d44bb10535331a514b9ded9f1cba8941ef8de8a40f2231154ceecb3a3b6754c"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/Masonry.xcframework.zip",
            checksum: "b6e371cfab51acbd04f53ddeefee8dd92f7e3c85b8162b1f2bbcf488d13072b2"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/nanopb.xcframework.zip",
            checksum: "9a90053a452990edc5369b171a00c5f5e419af96793b53d812863a3f6eac73ac"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/NaverThirdPartyLogin.xcframework.zip",
            checksum: "7cc416d8a1fb9a6c0627fe9dbc328d998610a27cd0390359de54099a11f9fa9c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/onesdk_ios_ubee.xcframework.zip",
            checksum: "30a25cfca501cea3220f2550600f9426c34062254d6f9f72d665fc5ea91dfab3"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "2bc41fd7430a6451c5cd1213af2094c5db078d553f95b2c962fdf452e9c912c9"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2dee95c6c7057f30376115da1b23077f8521eb58b8f41d98e99aeafd72a4ebf8"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/OnesdkBaitianFramework.xcframework.zip",
            checksum: "1b93cec53c417e7e850be6fe11a554ff6bc33ce298ab1a7ae79ad3c848e86fc5"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "cbcbfbef011a7ce6505185cf3377be64bb08b41f998abd7a07b869b635b1b606"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b250debbb821fae7a041c39240929d7a2f990920489bf070c87534d2f8419953"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/OnesdkSeacommon.xcframework.zip",
            checksum: "361383db4a10609c2512702e5530325af649cd1debfa04e573027f1cdce78378"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/OtherPartySDKFramework.xcframework.zip",
            checksum: "b69b3a2296b299db5726e27551807b7c3189b4bc993011707ac5cda96980281d"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/Promises.xcframework.zip",
            checksum: "6a5c5c2e11b81f03ee84eb5a1455e862ff85345971c17705b767d674e8182533"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/RecaptchaInterop.xcframework.zip",
            checksum: "101dd683140bd2ad65def05f8fc629bd66e2d41373d81feca487e18e881c8a0e"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500458/UnityUbeejoyManager.xcframework.zip",
            checksum: "49b5b6b940a0dc65196e9ae508cc42a76ff4c0a2d93fba300b817f26bb829b11"
        )
    ]
)
