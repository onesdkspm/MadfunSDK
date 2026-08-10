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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/AppAuth.xcframework.zip",
            checksum: "0167bcffa4e59f569788cf100e27e29411b2f14fc274b35e436ffd1a29bf7630"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/AppCheckCore.xcframework.zip",
            checksum: "1313124e0c43553b94000917e3c3373ddf7d597f0c207ab1e95799575594747c"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/AppsFlyerLib.xcframework.zip",
            checksum: "8fd3d3fbc913197e7a8bc3260c5759952a3c53d00c3a6485d7901bd0ba0c5229"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FBAEMKit.xcframework.zip",
            checksum: "690534b31ffafb0d851266680f695186993ee6c70c06adecc35d148da78e47e6"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FBLPromises.xcframework.zip",
            checksum: "ef8fc3966bd5e84d3e8fa6030dacc58212e1cc5a5d6ad9fd9d6181c5ef21bd9f"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "05daa39271f19a565f71a9bd34935239e8daaf942f5ce0853713957dbeb2eb98"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FBSDKCoreKit.xcframework.zip",
            checksum: "4da83ca3327ddd470707abdd6437346338df4b643fd63a41b61193abdefea2cd"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FBSDKLoginKit.xcframework.zip",
            checksum: "79d00695cc6ec4e325c95de2dbebe3edfc0a06a722036a31416560937e728ec1"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FBSDKShareKit.xcframework.zip",
            checksum: "24bf9ee84f9697a13d7e04da122bff24ad5a83d67fd6ac1d71f12b3632a7bd39"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FirebaseAnalytics.xcframework.zip",
            checksum: "7540a62207bbdeae98bcfdcb2334bb1c3e3c1a32daeae623e48b1bdc3ce5cf5b"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FirebaseCore.xcframework.zip",
            checksum: "968d27bb2ff5d2954f3111d2784fc685088cf64099b30f4910c9377116b837a2"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FirebaseCoreInternal.xcframework.zip",
            checksum: "f11e81fc72eb4b7d81daf968cbdaf86c3385e6fbbd376a19fccedaa012d6a0db"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FirebaseInstallations.xcframework.zip",
            checksum: "07ad3d6f44a6f533a98b9f0d85517c097f6ddfc16ca1ac0c91f2bdb859000d7f"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FirebaseMessaging.xcframework.zip",
            checksum: "0febc8c6d2e39826781274681bf24056b429c829716c2ebf88343c71b8f0f1f9"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/FMDB.xcframework.zip",
            checksum: "11f40aaed496463f4ca1b826f6d641d463e776dab1c0a04966790d62c02b9543"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "02c5c673844d093b4f8e16ad69e3472b7e1ac3f12a17907efe0ace78dd666ea9"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/GoogleAppMeasurement.xcframework.zip",
            checksum: "8867b5ec07194b929ab4e68236d4bbb1a54dd024ff364fe9a4e270775070e7d1"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "680959914117cc00c74808ab5411074a1591b0f6d80353204e9365f252cc77fe"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/GoogleDataTransport.xcframework.zip",
            checksum: "c0546b013e78426ab634d4624b8b3759feecb4ff644ad6b734fd347ad6721b61"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/GoogleSignIn.xcframework.zip",
            checksum: "44ead0f31b3002bdc1dbf0c5e1fcaf6328e30115a3201f4f4843ae2523989cea"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/GoogleUtilities.xcframework.zip",
            checksum: "6a3306b08b4418c390faad4b56142dde650290739f963ba850878059aa68c58f"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/GTMAppAuth.xcframework.zip",
            checksum: "105c43b3e4ec848b6b22ef850b728975b0c87ec04d1c40522f7e34649d59b626"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/GTMSessionFetcher.xcframework.zip",
            checksum: "09733debd2ae86a94b50e103368c69eac8b9fb582d72d409b0b790341674d10a"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/KakaoCommon.xcframework.zip",
            checksum: "0f8930c7566097d28a8685dc063675f02f2e61e71b015dad620fa3cec21a3d98"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/KakaoLink.xcframework.zip",
            checksum: "0791ef2d895a6894da54f06edba0007f62f8b4461b924ae37825136619c2f0b9"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/KakaoMessageTemplate.xcframework.zip",
            checksum: "ebcf4ac36b9f98de089bdcab46f4b69ba0e7f4a788edce7db5e355becdb4a546"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/KakaoOpenSDK.xcframework.zip",
            checksum: "b16cc6a5a15f8d7f6f1e9e66da58e1d1b8c6f840b614e2c1417ab10ee4bc8afb"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/Masonry.xcframework.zip",
            checksum: "7a2d936b3551d787a047f7930cb605245bb83af418831c5475bd74fd6acafe64"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/nanopb.xcframework.zip",
            checksum: "49e06a7ff1dd2f39826d71ef085711a97f894e3082079601f3e5918c1014251b"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/NaverThirdPartyLogin.xcframework.zip",
            checksum: "cf3307a948febe48cc796ebd60e17de0265ad4757b182011cabb11fa3bc6069d"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/onesdk_ios_ubee.xcframework.zip",
            checksum: "f1bfa499a5e51aec08a9e2eecae59c25fed37d02762b41f2d539c16a36adf4b3"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "264cf654aabb9ee07f082170fb4e3032b368e5884ce3a1cf158ea0434ac391cc"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "192e41e15188761bbd344c77b3a27583ab94bce44a429ba862fb386f7c38613b"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/OnesdkBaitianFramework.xcframework.zip",
            checksum: "fa0afc659796da976a05edcbde8d2e5cb53639654fe363a8df42d893ae124470"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "02ac0a6aea23394ddd059217d057168bcd85f894a6adc8c766670785afbdd6e2"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "a21772bd68cc29236665023898d5d0412824b929aea59067f30a75f43a60ba02"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/OnesdkSeacommon.xcframework.zip",
            checksum: "c0d7a996feee2f8891f2185350040ef3f49b92bb1f1c01e581327aca0e5cab75"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/OtherPartySDKFramework.xcframework.zip",
            checksum: "28b2ae02a83aa1860696045978a9f10dc5df94777800d98474faedfa271d5a60"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/Promises.xcframework.zip",
            checksum: "8fcd04be52abffe68f0ada29020ddeab1e6d6006862d298da93ea9311ea90f62"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/RecaptchaInterop.xcframework.zip",
            checksum: "30facd5c986f1b00bdceadbe24d100f5f65d32eabf0a7a867b2a67948f93bbc1"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0/UnityUbeejoyManager.xcframework.zip",
            checksum: "84c13bd10bbf2511ad0820bae59156c7e9921000792559a5bac05f2b8be608c1"
        )
    ]
)
