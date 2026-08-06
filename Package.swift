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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/AppAuth.xcframework.zip",
            checksum: "0114c1175e165701c1fe79b4e8dcc4bb003b026847cf3e186f84e3a0e08e341e"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/AppCheckCore.xcframework.zip",
            checksum: "d196ba10973b4cda42342d51e5af80fd1427e6b905042da1e87080b85bc05b50"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/AppsFlyerLib.xcframework.zip",
            checksum: "1ee7250ebe49e7889f5c5cd21ad6c7a0881bbd2245d5071b4659030a476f5c66"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FBAEMKit.xcframework.zip",
            checksum: "d755ac6356df3cb251d3e2a60149f98c1ddc23b9bb6063c58cbca7c640889018"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FBLPromises.xcframework.zip",
            checksum: "aa5ef1006252067b2b5cf553c9db854642e5b96ca3e44d35a82c88597f39d465"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "a3f936cff5285056dd1bb28149af6786b955103c6b034457c8f64d7d0f6cf27a"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FBSDKCoreKit.xcframework.zip",
            checksum: "1dc466b430f5ec11e715328646a0248bd18405aa62cebbe8e156fbb49ed88ac5"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FBSDKLoginKit.xcframework.zip",
            checksum: "a0f50f24eefa2d3a5d4bb3a8ffec5d774157f65bc48c9667eeb8045fe904c911"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FBSDKShareKit.xcframework.zip",
            checksum: "0eaa6c196af9e0a5f9e007695660300e0ba5ad491e2da1553e78ca4ea2e94af4"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FirebaseAnalytics.xcframework.zip",
            checksum: "5238d09aa66657daaa751d9610fda2f6402c8f70990ca1cb78970e6dba19c2a1"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FirebaseCore.xcframework.zip",
            checksum: "3d9791483be830c742c730af06c9159eded4e0d1cf55f1c3a426919509044a85"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FirebaseCoreInternal.xcframework.zip",
            checksum: "29cbb3e9018df58214faee3aa71c1427799af4d3f7b500770942070255efdfcf"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FirebaseInstallations.xcframework.zip",
            checksum: "9e8bd7d5c9c78d6d8fa36190cd6ffce45308a2b6ecc188879131fcc3d740916c"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FirebaseMessaging.xcframework.zip",
            checksum: "32c6da323461dd0c16b738225380f61e16deab7c5ade695420c175b429ffa1c1"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/FMDB.xcframework.zip",
            checksum: "7729c1ba451823c1ddad552b9daa1c76a4cb707c02cd681441a02a00d6cf2a91"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "cb9b54ad832c5c9f51cf80a7c1981965a4634338d96da32a1218bfb15d6081d6"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/GoogleAppMeasurement.xcframework.zip",
            checksum: "58991543438b0819d2ac3b0913c853f176a38776bd9eecb5036bda4e3aed43d6"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "5b13b119006b967eddc81eb8eff67000d85f4e6e84d1eeb046a10725f1c9954c"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/GoogleDataTransport.xcframework.zip",
            checksum: "d786cabbdcb0d5b573824dacb12fb3769e38097dca9eeb927100c718fedd718c"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/GoogleSignIn.xcframework.zip",
            checksum: "cb25effa94cf905ae92ad4f1482920d4db10631cbd2d36ed6bdd250c937646ce"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/GoogleUtilities.xcframework.zip",
            checksum: "c860878606c04ade1f491eeb51a1b999f9ddfd19b7649a809fb49a02e6f26037"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/GTMAppAuth.xcframework.zip",
            checksum: "f8fa6d39ab1f3d80e51b3fde943bc5f26a71e53903bb289d883611c24245394a"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/GTMSessionFetcher.xcframework.zip",
            checksum: "192f6d7e4fd69a38adf08e7a9b5341aa8583d90e553b8ec5a6e44d84d75a9ea5"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/KakaoCommon.xcframework.zip",
            checksum: "b4af277a6b66d41c648ffc6535681b154052b6228bd7e721d7f8bfee08bd112a"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/KakaoLink.xcframework.zip",
            checksum: "07391f4878b4d1e93f1ee92d2be09d5292581125ae8537298617a3b433d05ae4"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/KakaoMessageTemplate.xcframework.zip",
            checksum: "f3301758b0aad4e7761cb583bacf1d0a6c4249298c4da9cbfa6ad59d4c4ca8ab"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/KakaoOpenSDK.xcframework.zip",
            checksum: "7a85e263dec5a6fae77e5a68ce544a37dbac63830953f974be70df56c21bda71"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/Masonry.xcframework.zip",
            checksum: "a15eacf3011f15273b0a56f752b463177e8ec76d92134f61d46df3d789f74601"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/nanopb.xcframework.zip",
            checksum: "0ba138ddaaf3ee5f507d2dc6202567f5a89c70e9658a1a49d0bf105001fd9a68"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/NaverThirdPartyLogin.xcframework.zip",
            checksum: "379650c21d465f529ce4b8bd7701541d2475ee9ec9250c62e22e6e6d84894f3e"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/onesdk_ios_ubee.xcframework.zip",
            checksum: "6b87a8ffd1fba8526543762796f809e32a5637d376ba506d2d574c7f7a0b2e1a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "9f67b3166d218485e0fd100d5982ad90b5b96ec582b3425eba4336fbf2654137"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "cc4e030857a0be2ac16d04e7003e0f9bb0cd74cbbdd0ec2b0d9de6ec5e29334d"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/OnesdkBaitianFramework.xcframework.zip",
            checksum: "c637f03986e42e5de8b417f8c5f740b6c7a1b6c6e375426ca81e3e574dab601a"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "48ff752c1f059e7fc059fbf3a92a7e7f6cfe5b60c8e366735023085bd214b859"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "fa0d3b1167752997d48c21f34d598e58918db5d1599e8c3ac750ba7cf58f8702"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/OnesdkSeacommon.xcframework.zip",
            checksum: "2a3f66627808f8522575e2357648bcc82cc2cb0a6fb4a907cbcaad1d733a037e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/OtherPartySDKFramework.xcframework.zip",
            checksum: "63312b4eaee4c34320c2edc7bf49d075c65cbf47bb42a3a989c5ee91c4bbfd1e"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/Promises.xcframework.zip",
            checksum: "0b07a6bc51ddc55da0c3996a729bad8623f05ef701ff7217ac0a301459a257f4"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/RecaptchaInterop.xcframework.zip",
            checksum: "7152b7954c0a2f3666d36bd6745580935fad5390ea7a2ee2f51437d0500eee55"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501550/UnityUbeejoyManager.xcframework.zip",
            checksum: "a5547db75bef0bdb93268f8166dcedf74d34a152994ff0f2d7b9b513a7113fab"
        )
    ]
)
