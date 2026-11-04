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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/AppAuth.xcframework.zip",
            checksum: "b6bef7ac95c2a0759da9fc92791cd559ddc0b4d3e7ba76da781cf54a8c0831c4"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/AppCheckCore.xcframework.zip",
            checksum: "32ab531690a0aa5fc32427407e0c7520c522fbf808478d137f12fcc67640f968"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/AppsFlyerLib.xcframework.zip",
            checksum: "617ad1756c3ba4b6915f9c1c4403586d26e2649b4e65d3509c4e8d8ff5567642"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FBAEMKit.xcframework.zip",
            checksum: "963867b31b364bcf8dd8c28bd62625acc690727da797cfdf2b189f3cafbf7e4a"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FBLPromises.xcframework.zip",
            checksum: "66c2b218b5846d76a23407291128ef1dc016cc79e724901a5528668ac4f624ef"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "95fa602bda2aa5b9615426c003826ff6f4813ab27da0ed7965c634c8ac854f3a"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FBSDKCoreKit.xcframework.zip",
            checksum: "58d36cb18bb361e31115ff58ce29ae2442a639f6d97e7de84d48b0a11113fcb8"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FBSDKLoginKit.xcframework.zip",
            checksum: "387a62eb1d00d91e6bf3a549d212ecb6134702d6c3990c9e5abba22f14aae9df"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FBSDKShareKit.xcframework.zip",
            checksum: "b12d8462f92b79d198df7be878d9297231e42536e63239d4d3ca89db1798e436"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FirebaseAnalytics.xcframework.zip",
            checksum: "11258fa8088fecedb88f6fe123edff1c0d9d8187e994a37ac1ac0488ac06058a"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FirebaseCore.xcframework.zip",
            checksum: "38460cb38abd5b537669e84658efc03b1b7361ce5b728527ff326855af43ea40"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FirebaseCoreInternal.xcframework.zip",
            checksum: "8eaa08b466b8685a0a7bd192b06cf0a391fa6e611f9ef529c7544e2fd8810e2d"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FirebaseInstallations.xcframework.zip",
            checksum: "5531e2d4469c7001697cf29d453177b290fe85a0ceb328c341cf1f5502742eb2"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FirebaseMessaging.xcframework.zip",
            checksum: "280f15a77ca84c7b7bb159a1fdd00a1a74cf0ea65f5b4a061351e2fba72e93e6"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/FMDB.xcframework.zip",
            checksum: "2265012f6f5440d744a1b8073c93124d378e3153628a9440ac92c59a5e395ff9"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "aa9a097ba0c37733f74e382765065ed1fceae0ca6def098e3775e3e41e94839d"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/GoogleAppMeasurement.xcframework.zip",
            checksum: "1fcc25f54474173d1dcb6ba8acbe09fe49a8204eadeca2678cd2305478e672b1"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "d43903c4ec33eae4c858d1d09aec3d8a7f0d00e87206ffbe90c7ad47f5d4bcc1"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/GoogleDataTransport.xcframework.zip",
            checksum: "01b5e44e28283a89e5d1eb146953ca2b86d0dbdedcf7e1cd0f5bf43a415d17b9"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/GoogleSignIn.xcframework.zip",
            checksum: "7caa553ad5709746216f7db0842b3d6d6e7177358f59301e783655018df8a764"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/GoogleUtilities.xcframework.zip",
            checksum: "5a5679b23d12300841b8c0a102f9483d2c153a89add574c93ca64021ee3a4df4"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/GTMAppAuth.xcframework.zip",
            checksum: "c730f1eefa6d455acbb967effe51df082c83b3b12f2dd09037e7d946100623e2"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/GTMSessionFetcher.xcframework.zip",
            checksum: "0c17f3ea35eff7f457b7ac09dac882955ada12d2044b70e25be4de6265e92b30"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/KakaoCommon.xcframework.zip",
            checksum: "c1ea340b646555d47c0ca94ad0177d667db0bba87ff35ab193ba7e7af0413cc4"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/KakaoLink.xcframework.zip",
            checksum: "78d0faa05d7a53e814c400939283a28e1b20615873726af0e6696738f85efc23"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/KakaoMessageTemplate.xcframework.zip",
            checksum: "4b44462e5f473145648153cad5e95e41045bb83281b6f18952515e60d8ae0fe4"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/KakaoOpenSDK.xcframework.zip",
            checksum: "286de42e644ffecf3e86dcd7d88da342fbf815d8f05f2680b4d132b4bb249d19"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/Masonry.xcframework.zip",
            checksum: "aad413736f92e303382f19909986ceb36a1d0138ff6301f12bce083aaf728e64"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/nanopb.xcframework.zip",
            checksum: "be881f3d1c54ee79a63a7f383c6c8ad305a8276f9a3802e0de020d986e7bc653"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/NaverThirdPartyLogin.xcframework.zip",
            checksum: "46659232d3fafd66d0d632b1f81fccb432c208a7d7dc0af693fa338e752cf2d0"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/onesdk_ios_ubee.xcframework.zip",
            checksum: "390d501ad35c42a4b6a1a5d11b843744d208736c7d3c9f0a17d5a77e8e0a0a8a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "65a6e78b5936eacbfbcb234e9e7f0d1a114a28cfbbab7d5d8287febe690b097c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "aefc478178b89915eac16676bd15851bcb7669e747c79ed191f0985c1e8b2c52"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/OnesdkBaitianFramework.xcframework.zip",
            checksum: "5cf7ba54b7251d748429d81e5aed5eaeb827def61394e69bf4823f8303d59c57"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "1406d17b33644b67ea426b11f0b499cd7601e46d5f41e0a753f694df49634102"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b335432c2e11a17c491eda086789b95ab03f8ed004022bf88b412593f1eb1893"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/OnesdkSeacommon.xcframework.zip",
            checksum: "e609be2411cc64ccabaeb753e3ffaec3c124a03071bec15512c2573dd9daf4bc"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/OtherPartySDKFramework.xcframework.zip",
            checksum: "df0d594ec7b03d242edf255462344d36c7f6ac43e16c370864c9fff97fa40fb0"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/Promises.xcframework.zip",
            checksum: "06b586d742b1335b3384852cc4cd600ad8ca17f2c97dfb255c2014e70a40dfc4"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/RecaptchaInterop.xcframework.zip",
            checksum: "cf17bce52497b0527810d4b016844d16061568ff1a9dad54d3d5ee4fb78bac9e"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559820/UnityUbeejoyManager.xcframework.zip",
            checksum: "0e78fd38a86af93edd8a1f602f5b041012548752b6b452aa76696e72a61ef26f"
        )
    ]
)
