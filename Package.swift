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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/AppAuth.xcframework.zip",
            checksum: "cf7676392cf3ccd2aa5715b8071c6bdffb57a2037c2398726de9be54404458d0"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/AppCheckCore.xcframework.zip",
            checksum: "b62e7f449ce5c464166795807b373283a02c5bfcf51aac6f841ad77b022a4c97"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/AppsFlyerLib.xcframework.zip",
            checksum: "4e507ea610c2da20b58c84ee5e05d6c1f1adc7da20ff3aac52bb1cca66eb7073"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FBAEMKit.xcframework.zip",
            checksum: "ff400e79c73b725e926863972de6584581019f63d30995f2f59dd216f5e6cd01"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FBLPromises.xcframework.zip",
            checksum: "534392ca9a1b35ce8a60d8934bad6b221e11e687780b07dda6eda7f4fbb2325e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "e39a4d01b9a3f5429793daa01c03ec4020fd70d5b083283752e31b7bf9806e6e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FBSDKCoreKit.xcframework.zip",
            checksum: "92de96ae6d93524e18057367589ad7c1164ed1389d84fbc3c88dfa6846f99f6e"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FBSDKLoginKit.xcframework.zip",
            checksum: "0cb263bcea110be36f4e259a66de97b5fe294d14ebda4b6b7f07d2af3828e713"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FBSDKShareKit.xcframework.zip",
            checksum: "190ca62d48a912c4dd77f3026030c03b7cf2c2521d20c547bd6c1bd474695c0a"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FirebaseAnalytics.xcframework.zip",
            checksum: "a4e114b281dceb2c08c71622a55429df7fcaccc4f9c9b91aee1d7a9a540ec222"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FirebaseCore.xcframework.zip",
            checksum: "5403b02001e07205f9e3fd64529a72b210c1f7700f4054b2669fc8dd7014fafa"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FirebaseCoreInternal.xcframework.zip",
            checksum: "c36cca18bb70e51ae5266cdc9457a73815c0200f6b6488e044ce4bc6f3e5b7d2"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FirebaseInstallations.xcframework.zip",
            checksum: "131d813ba23d3e784b1b6d525623e9ac9dc40a37b2902a7a01081d5a67a53825"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FirebaseMessaging.xcframework.zip",
            checksum: "28d1ce2337dc9268c60d2b637bd4946cbf09432a37c2612c8fe83d6636bc6b22"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/FMDB.xcframework.zip",
            checksum: "0dd2496d5ef03e54a05dee494cbdc97c39ab394d5844b69fa71b1329d5e1aa82"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "6094132dd6f87a10c67f7f52bc166a9964eb53819c3eb3f68dc88cd4f7c11b55"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/GoogleAppMeasurement.xcframework.zip",
            checksum: "8be7997f96dc8f5442d59a6b66cf76278196cc1bf4739d3ce54127ee44437b84"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "39998391dbb966b31cc457d95b414bb0e37ac68289484643c54f0c029192be21"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/GoogleDataTransport.xcframework.zip",
            checksum: "f4319cd9d7a3313874a4f750825cf0ec14fc37c7bc6595e63b3605e991195bce"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/GoogleSignIn.xcframework.zip",
            checksum: "74a1bedbc04c7f880958d3d3e7a505cbc3711e55f03fa385cfc42805f7760616"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/GoogleUtilities.xcframework.zip",
            checksum: "03e2382d03c619ad1003111d3998fcf5503d59c23d476f59e3e90a8bdf06c83b"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/GTMAppAuth.xcframework.zip",
            checksum: "2e9410bc4220e17aca16730be58d08613b378820539a94b4ba4735abc80e1428"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/GTMSessionFetcher.xcframework.zip",
            checksum: "ab036cc3947a66be5cde24db1bf2c79e4b83d6882b0701d21ae42f6110546f2e"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/KakaoCommon.xcframework.zip",
            checksum: "1df223f8d2ddedf047f7ec2a30c70b2cd9d7ce219e192cf20ba6f325d3fb61c1"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/KakaoLink.xcframework.zip",
            checksum: "6bd6300741d23adc30c25fb864f030306f54376be6989fade66e9bae33ece8b4"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/KakaoMessageTemplate.xcframework.zip",
            checksum: "1a6010aba6b8d0b52974a3c20d9e8b1e945361d64d492cab232ffd7aeba6d85a"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/KakaoOpenSDK.xcframework.zip",
            checksum: "b418c8a1f8bdf5e46d4f622930d8ec36c8d6697df89485069fbe72bef24dcb95"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/Masonry.xcframework.zip",
            checksum: "5ef7575681303bcd2e0b9b65ed50a9a3f7f7021df5768ea67c6b56e9370cfd91"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/nanopb.xcframework.zip",
            checksum: "76493407ccd4130c3d6a5c5beb378e5bc55eedba67720c67199a00806b13b283"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/NaverThirdPartyLogin.xcframework.zip",
            checksum: "e126b556650db4b5a24bb2bdf821e0c10cf2143f7172d4efed0864e551fad608"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/onesdk_ios_ubee.xcframework.zip",
            checksum: "6b63499cfe5ecb506327eaf7fa80b5c3afed3a78d2fed4ea66378464a22ff82b"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "0940cfc2a8a8f0844a9aa703217a9fb6b6de790d2b81af308fa75e16b3250cf3"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "8d5918d5dd913100243a192711acef7e1af35cd548a377d21b5e6081910a75c2"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/OnesdkBaitianFramework.xcframework.zip",
            checksum: "06849f62641c617f352ae24ce4a3d5c19a2230fc4083477b1826319f281fca25"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "d93d4277d8e37ec0ecf4fce956b7af2024ef3f6d5baf092c33608300243675a4"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "0654efd01d32e6a75b8113694d98ddb1b4444c60077f5aaf82259a126064903a"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/OnesdkSeacommon.xcframework.zip",
            checksum: "d91425de1f7fa930953d7b3cfa9d84aadc3add43a9fac630abd378ebd04c0989"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/OtherPartySDKFramework.xcframework.zip",
            checksum: "b780f6de650c579ace902818f3052edf5165958550597fc6ed0f49e063990184"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/Promises.xcframework.zip",
            checksum: "e1df0c055406ea4d0cff1fcd762123a5d677cea0688bb33434f970a545808f9d"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/RecaptchaInterop.xcframework.zip",
            checksum: "ca82b7f95c14ebcff0aa15057c2a7d8d1c54133c0a324592829ea34de6730006"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551654/UnityUbeejoyManager.xcframework.zip",
            checksum: "5986a50cc934c6b0fff2612f22f1e224dae8ec1a5523317d44f841b17a42db63"
        )
    ]
)
