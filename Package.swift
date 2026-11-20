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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/AppAuth.xcframework.zip",
            checksum: "f5ebe45ed718e4e133472e1c8a3e82250fcbf6f13d38ebae273116c26887ce63"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/AppCheckCore.xcframework.zip",
            checksum: "f5ff5652e64c950956de2e7e121ddf7f640747967c8c99da3b6df58cbc00342e"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/AppsFlyerLib.xcframework.zip",
            checksum: "2fb23b0720b86addd4440b73f608272b94ff1147a6488da27fe001f016d13e5c"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FBAEMKit.xcframework.zip",
            checksum: "af6b9cd8d23b9367129919596ce2350da45a3c81183f81d507533e5794171ea2"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FBLPromises.xcframework.zip",
            checksum: "5644d5960bceb2f549ab9f1729be3a704fdff1ec432dfd3ecdfffaba651f808f"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "0eaf1086c12f220c29ad29c7a7a8b203ebf3e6c5af6b449fd4674b7582c0592d"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FBSDKCoreKit.xcframework.zip",
            checksum: "3dd491d847a01da46c78bc91b0553e743de6a748d8f4bff6fddd8a548cb3e75f"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FBSDKLoginKit.xcframework.zip",
            checksum: "e5694f615094b43c21a98cdde09cc61b8a74a70c2c1f9b0673332d3e384cbc3f"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FBSDKShareKit.xcframework.zip",
            checksum: "82f2fcc08c78a151f949625a7abe4447c7f6aaf33a2bce28f6910399f84a9092"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FirebaseAnalytics.xcframework.zip",
            checksum: "bf3d35de215b173f251372a28dc4e939645166eead18980ec8e6d3aabe5e36b5"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FirebaseCore.xcframework.zip",
            checksum: "cb56a3f83d0c019932e79044f70a08b58a7ec09af08afccd55ab452af48fd0ac"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FirebaseCoreInternal.xcframework.zip",
            checksum: "7a29d4848b0585bcacbdb9d11c657956f96935de449849ac1b42bb739c779b6d"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FirebaseInstallations.xcframework.zip",
            checksum: "2cc98cb49a86318b9b2ffd405385e23f0a480dd2a67e5c357821608e3af3d00b"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FirebaseMessaging.xcframework.zip",
            checksum: "4a4df47870ead25c17d9308496dca4bee58cf4cd588c124aca502a4671c4b340"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/FMDB.xcframework.zip",
            checksum: "d2a3ad6a4673f90cd931a201273a3f102a7d9e553cf6bfe3ae38d03e728ca96c"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "7cd4ba02e64e8ecbc51f2fb6d6c506723a09725da66f6a1035898c223dde1245"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/GoogleAppMeasurement.xcframework.zip",
            checksum: "72a9097026b5a2df43f721ab2f68af5a441375f382d1b02a5a168c1aee2a0ca4"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "9064cd7f1e6d6dd82e96c62a781d7c5cb2961c7a51e7c49ed2370f99264292f0"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/GoogleDataTransport.xcframework.zip",
            checksum: "a86899bd8b018fe9592c2114633a02b6f49aa29f64c4870da03c63cdda57ba0f"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/GoogleSignIn.xcframework.zip",
            checksum: "95da7cc3f506a3fd59010a8953536279d33f0f21b0ca6c94291c9be2ae653cf9"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/GoogleUtilities.xcframework.zip",
            checksum: "147c023a901160f597996df812db431508951734af352842b5fa3b8d21e84ee3"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/GTMAppAuth.xcframework.zip",
            checksum: "a3439dc744e64cbde42357002a181c246a283d8b341905c468cd0ef47c0c3ca2"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/GTMSessionFetcher.xcframework.zip",
            checksum: "0cd4decf6274bad5bbbc20173f46be62a3d9cf451598380df029cd85d357ae3b"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/KakaoCommon.xcframework.zip",
            checksum: "7057f6eb587c1f8077491098f1ad45800496cd1a17850842d813cfe38734cfe9"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/KakaoLink.xcframework.zip",
            checksum: "45ab225f15b7645d292d459dc81cd8b65a5bd9a91081c7745f0c1188c490d690"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/KakaoMessageTemplate.xcframework.zip",
            checksum: "d0843f56797b39f3fb6e03cd7c06313a26f34f17388fbe18d3825d298d6378a6"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/KakaoOpenSDK.xcframework.zip",
            checksum: "55ed46f004f62f92979330fc8a493aa715852112cbd0bf5811a745b386395f18"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/Masonry.xcframework.zip",
            checksum: "320f10e7cecc9f952ef8acea39731c46e4dc5ff7d00e21826f4cc6ce2f7bfb92"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/nanopb.xcframework.zip",
            checksum: "e52a788bce851f32c54a7bb1b2d1693c272ee806b3530b7238c2bbeebbe330ef"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/NaverThirdPartyLogin.xcframework.zip",
            checksum: "d84699d2c5442a4c31afcbcff58ebbea1dbddea96434f617fe3811fad53e3435"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/onesdk_ios_ubee.xcframework.zip",
            checksum: "36cd0e5256b967962cdf55877b6af9e404dfb0631730ca4014a0ccb09783b376"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "f59462cd7dabefd13c3b96e185a539904ca984ae182d4b8ecb46979b907efa67"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "23ab70e66a9153819ba00a943db175f73d71e325fb17af2f1bdf388f9589aa99"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/OnesdkBaitianFramework.xcframework.zip",
            checksum: "de5026a0c1fb58555822c324eac34bb5acfcce339923ed5c6cc9e98dd611e069"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "7dbb19c558ee2cbd12c392cfbe7641a4ca47869bb07cae62f5a5a201e17f443e"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "2b3345d50084c6bc6aaafcd8fe6561d2dc1cc5c70c5e4e8c587608cdbbc8342a"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/OnesdkSeacommon.xcframework.zip",
            checksum: "d25df22291765550e7c508806f58c88196acdf35ace2e3518ef65c45c867f349"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/OtherPartySDKFramework.xcframework.zip",
            checksum: "fceafa0242260b4627d2142394f5f9797cae6e7449ad6417c9d294e9cc327dcf"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/Promises.xcframework.zip",
            checksum: "9e205692282cecc409152cbc0128200218c526b45426ceeddf8f1eb4285eaa05"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/RecaptchaInterop.xcframework.zip",
            checksum: "64a2d916f45370e0fcd32d416c82ce86c7d55e375787de9e66b932c671f48bc1"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4/UnityUbeejoyManager.xcframework.zip",
            checksum: "2fb07165de893e5f04bedbd3b5d1301c22327b7bc408a46861cd045913baa995"
        )
    ]
)
