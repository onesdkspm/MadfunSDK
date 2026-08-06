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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/AppAuth.xcframework.zip",
            checksum: "428fbed77227dd4fe3cfd6a88fc87a9b3d5e4ff278e13371ea48d00e6b571f21"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/AppCheckCore.xcframework.zip",
            checksum: "1ee805d93a9da43e466911c2d0b426ffb56ea2cf8981e216fce5f5aa4b8ab462"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/AppsFlyerLib.xcframework.zip",
            checksum: "4c7460b2d987a0e45f3a71a156f104ee29bf3115c2efbdef206886bb86333020"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FBAEMKit.xcframework.zip",
            checksum: "96f4973344a7704584064b170e8bbc51d99dc722c8e5ae59ef5693c9f0e1add3"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FBLPromises.xcframework.zip",
            checksum: "1d5a0d16a6ef2f5962d037bdeede457be16dc21685988089fc38f5379a7115b9"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "411e7ebedbb78c545e046c0c2e99b139ec743bed95a4663b6a321e131673b9cd"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FBSDKCoreKit.xcframework.zip",
            checksum: "f334031dd1f8efe4c5d1b2a64010fc035413c42e575885ae4a78f6893f731bc0"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FBSDKLoginKit.xcframework.zip",
            checksum: "a666940422940a0ea7c0b28d34e8ffbb843c6c09b22b00112f6fd279d66016ed"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FBSDKShareKit.xcframework.zip",
            checksum: "bafd4031a54408660979096384d41aa10413e1d46c9b9eae502f5b0913127575"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FirebaseAnalytics.xcframework.zip",
            checksum: "b3a414600b9cd7bf910740e18a9e4d8728e439cb2635b0812f31ba8c55a08717"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FirebaseCore.xcframework.zip",
            checksum: "bfa50e682d5312300d9ef0dc556a645bda1ad7b78a31cc0e8bbccef9874cf4d7"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FirebaseCoreInternal.xcframework.zip",
            checksum: "a9a812ef7e92e62b280572ce59e8d189cd484680af3535fe9b29e8319fbaaa77"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FirebaseInstallations.xcframework.zip",
            checksum: "00857c34acf379aa8decb8323149fc61c18d233b2fd121e9af68025f1703dedb"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FirebaseMessaging.xcframework.zip",
            checksum: "9a1d10cd175d640639b88cd528e9de216a8ea54982988dae56e6fcb3ae76a375"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/FMDB.xcframework.zip",
            checksum: "e9eb20d823f9d7e28fe7d1609c3b25f8b9035ab2040bbd1c1d10e9647941bd3c"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "930aa272e8f3e56677701e4255147c8291312cd93fcc29155c50c6f7d8cb3e3a"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/GoogleAppMeasurement.xcframework.zip",
            checksum: "48520174015440259dab9496685c0ef565f109781bc92ecfe5c02ee7532ff7a3"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "39a591b24841b75e07318bb678ad53b93dbff3f0785420c5f72f36e1e76239c9"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/GoogleDataTransport.xcframework.zip",
            checksum: "80a09124d54bf8197a08862183155c7227fbff90c82f16848deae05a13fc9314"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/GoogleSignIn.xcframework.zip",
            checksum: "7e5d598bc75e74b615a67131b02faf15c485217cc8733db66ff1319915fb616d"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/GoogleUtilities.xcframework.zip",
            checksum: "f2716ef03b983674c127e17fa321c6d2d259a152fa3d539afe99372441761eb5"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/GTMAppAuth.xcframework.zip",
            checksum: "d147ae9edf783ea0b3dd60147085f74602580c889477f7b8d7a7b08274774026"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/GTMSessionFetcher.xcframework.zip",
            checksum: "5091ba58896a1e22fef014552b0a96affeaaa234065e6f4ce943e0ea5e207987"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/KakaoCommon.xcframework.zip",
            checksum: "67f910b40819dffc60da07d7131c748ed90dbe07b9ff64e302fab48310816506"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/KakaoLink.xcframework.zip",
            checksum: "f0e69ec2358e693a2ec60611e8c1f473308bf0ddc2cadc96d2e5146eae45e521"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/KakaoMessageTemplate.xcframework.zip",
            checksum: "a88f6fe20462f00afb1c4405c9bcfd4fe3ce2649c1e29f7649e3e09ef56315d1"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/KakaoOpenSDK.xcframework.zip",
            checksum: "bdb2174942fb1a2df84a485e8656dc348570a71784a5a5fd4e4e78800fefc49d"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/Masonry.xcframework.zip",
            checksum: "499841c908610656ee7b133c2c43755a89bfc795b00fd36db5d62298c7f8ed25"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/nanopb.xcframework.zip",
            checksum: "a4cd0ed494724105a1925e6f38a40e17ddede35d4c4191ac641156bbea81d727"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/NaverThirdPartyLogin.xcframework.zip",
            checksum: "01fab10a6905d3fcde6a1667df0dffee4d8b899577c6defdebefa34950ef86c7"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/onesdk_ios_ubee.xcframework.zip",
            checksum: "95174512ad8e7906ad90118ab2e84f399e48b63d53091d0a379cbdf9e9066172"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "1354c6c8d02aa3e388884522a9d6cf4c47e381398d972564ce9acb5edd21bcce"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "c7d03e5b4459bf2e96df68f5d4cdb6486a76f170b34de23cea803cdfc8c084e2"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/OnesdkBaitianFramework.xcframework.zip",
            checksum: "62cc587147826256ed2fab5d840ad4c3300d9191474cf6714599ccc2273f9552"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "6188116695a4d1bdfb0a7cad84feceaa5ed1813336d1cd509bf0dd649c08dd75"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "365d6598d7c1dd579529e109e51f63eaab1ad994a9a89070248750796d17bcb5"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/OnesdkSeacommon.xcframework.zip",
            checksum: "27c440ad6579a5e23b1a3876877bc3afa535241cc849ae3a3d8b6a175518cb7a"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/OtherPartySDKFramework.xcframework.zip",
            checksum: "1ccbc42f9dc17ab3b7db9dbd4f27752bb793f91fd48af6bfb750f55b691bc3e5"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/Promises.xcframework.zip",
            checksum: "6925ad886c2b7daeb7d9381844f3123dae3d1dc082f443c498e0b6460663f0dc"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/RecaptchaInterop.xcframework.zip",
            checksum: "eaa83e27079015a3e89fe0d73dc64c26ca14e9223719e84fae1097a4755776b3"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501372/UnityUbeejoyManager.xcframework.zip",
            checksum: "f16da408f32c90754833b4853788ee91febb710beb5ee4d4fab141861cf30d26"
        )
    ]
)
