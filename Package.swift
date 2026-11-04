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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/AppAuth.xcframework.zip",
            checksum: "e78ca52cf47c79e1352d9f1aa72e34f9296ac5653cd1da850edba1fb4c2eeb73"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/AppCheckCore.xcframework.zip",
            checksum: "3afd974b78dc5cc4b8b46f4b945227d6973fae6355073cde05293e73d9077258"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/AppsFlyerLib.xcframework.zip",
            checksum: "2c01fa5153b34912aed202272fceb8834b7cb20e2248c89d0876d073c14c2f66"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FBAEMKit.xcframework.zip",
            checksum: "41df82bf22a9299f1d044087b73de82d8679436833b2a6e6aa0943461f0377fa"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FBLPromises.xcframework.zip",
            checksum: "34c8e46d154946551d80db0c884011850595529e99e1f4e359403319883ffde3"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "d0248bcf963513ab0ed1d0c926e6ea1d7cd3073f428dddefde0748a20fbe1d8d"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FBSDKCoreKit.xcframework.zip",
            checksum: "486e959bc02168c333fbee34cff2b27fd22a7ec69b772717b620f326c12c8f6a"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FBSDKLoginKit.xcframework.zip",
            checksum: "a305c89b6818e78e29530fd21a79354a49f3873d7879acd316097c555e3f0898"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FBSDKShareKit.xcframework.zip",
            checksum: "e99024124dfe71c413a8df9b53f3f3cddfa4a8e01cbfce129f14b1fe3be9f5e6"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FirebaseAnalytics.xcframework.zip",
            checksum: "d9baa13db5936e6a2adb5c58f38b688ac0b45a8af9706db4129cdf89830212ae"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FirebaseCore.xcframework.zip",
            checksum: "833c38b3d7455b6be38f513eddf5a1d9021c051184bc8d8705d8b8d81dd4c741"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FirebaseCoreInternal.xcframework.zip",
            checksum: "7b0557714220d859ba97bd6ecbbb1a43375671bd0631d8a268453f1bd39f647a"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FirebaseInstallations.xcframework.zip",
            checksum: "8dad218577fb19d1ff3a83af3609e3cde265bfde2c08444a72202680b21114ab"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FirebaseMessaging.xcframework.zip",
            checksum: "ab2bf511c6b9a3fc791129951f657b9d3d5327beecfb34bbf3b7b5a1e4d0985d"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/FMDB.xcframework.zip",
            checksum: "491f255bdc4617e74f3be5a49ee8521a4ef3b2531d838a8d6a6c4cf26fcb5d89"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "69a2e965ebb07516615ed130bf6e09f1342ca498d62bdb1673ddc795fc35c7c8"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/GoogleAppMeasurement.xcframework.zip",
            checksum: "fef1a1f1a40acfba833eff61f92c820bf75e5a40844daca6febf5075616adce4"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "f9f083e62305c73a8a9919663cd7453faaab995de48d400ba187a848aedbe910"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/GoogleDataTransport.xcframework.zip",
            checksum: "10cb6ea377c6802f4c088415ea4dfab5fb246a0cdf43984b55ee08719b267780"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/GoogleSignIn.xcframework.zip",
            checksum: "6184f04209ce10e4c56ee2913c3505078092cb208fc6bc80a9aaa2a65851784a"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/GoogleUtilities.xcframework.zip",
            checksum: "e2912967e910955a513960fd3c805c51523b9d1fab4d0835999a5029be9acb2b"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/GTMAppAuth.xcframework.zip",
            checksum: "c4f5b257bdeb665a91e85976b9987f64d2cf003f3448a733a6385198a4a366a1"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/GTMSessionFetcher.xcframework.zip",
            checksum: "b501181b5414890a4dcad9cd14264b1fe4f7a8ec0547120c170b98bce413f978"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/KakaoCommon.xcframework.zip",
            checksum: "7936e907b21fd3af959112dbdb15e453872d08a8ad7a15eb544bcbe120ef49d8"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/KakaoLink.xcframework.zip",
            checksum: "03946d8cbe0fe6f9367c7971fb80392e8b97308d7f564a448f6d6de2a2d82736"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/KakaoMessageTemplate.xcframework.zip",
            checksum: "405ea41b26fb5be9cbee4a84e05c8fbf73f720c23c09e77ac44749fcc428a89b"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/KakaoOpenSDK.xcframework.zip",
            checksum: "66777a0790ff08904d7cbd1f942afff169897432dba660e409a76ff5ffc9fc63"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/Masonry.xcframework.zip",
            checksum: "4b6c2329e4870875c9f89383a577ffe48ea4a23b2d5c7e62d097e681baacc9a7"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/nanopb.xcframework.zip",
            checksum: "df0386febb7a15bba90aeeed345cfdb53b50f7ca0f417599f8c79409ec120b3c"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/NaverThirdPartyLogin.xcframework.zip",
            checksum: "5651b2be5f94bf977a4d68155da2c0144c966320b51e0a25b40b49e8b41364f1"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/onesdk_ios_ubee.xcframework.zip",
            checksum: "f6b42c201fc38f85931b50c8d7542f884234875fb5ca936933d6050b9c61f39e"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "6251f09c6ab209a1e50b21f6cc8643768a85ada3a5a069c6f5ac8c300bfdbff2"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "4d2d85d5aa78d40010518339b83f9655976e50cb9b5bc1ad85f2908374e15575"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/OnesdkBaitianFramework.xcframework.zip",
            checksum: "5c1cca40c63d0d0da12bb27af023f2578d242efb5b939dbf0bcbbddc5a67511f"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "e645b313fe59dfde483d07e94dc04cb66d09a641f0b6e7364443646438288a95"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b7b2cf56e17138acc590659b14fc4e5b877500cf40490369e288ae27508a7213"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/OnesdkSeacommon.xcframework.zip",
            checksum: "9514db24d4a0ace6eba8891838ee4dabc92f84e9a06e0a56788dd3d0b9935156"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/OtherPartySDKFramework.xcframework.zip",
            checksum: "6c9ae9428da777e5029e518a9dd86002165b1cbc8e03fa3e8124eef9686a80ed"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/Promises.xcframework.zip",
            checksum: "c5df770ec1980c8474e4256ccd097927cbd49374c91402efa273e355c244aae1"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/RecaptchaInterop.xcframework.zip",
            checksum: "6952ad8d1fca0f2c2aad14c5173f7b794da9c0fa879fcf5a3cc9a87baa641083"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559834/UnityUbeejoyManager.xcframework.zip",
            checksum: "d7ea84e54a624e56fe018b95bb53e45cb8102d4695acdff0e9d90f811a787c6d"
        )
    ]
)
