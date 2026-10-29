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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/AppAuth.xcframework.zip",
            checksum: "26c978e789b261c7b3c02d83edc1f03d08b88d8c5f50bb9f0d429adfcd438c43"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/AppCheckCore.xcframework.zip",
            checksum: "ee081b9dc33e9075b3b6902ea052bb8b0d386fb18d0a456e91e24e6f05b75f7c"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/AppsFlyerLib.xcframework.zip",
            checksum: "dc0bb0e7d335b0378c74a5da1c925e7124b0b62cf46accba757dcffa14a81e14"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FBAEMKit.xcframework.zip",
            checksum: "b43316f25ecaf2bbc27f5f701a9347b1ae6cfe58b45941bf58de00f4d3f680f4"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FBLPromises.xcframework.zip",
            checksum: "edacde0d03e586e768f2fc183747d6ca1e4bcecd87e1cd27c6ce5f326ec26276"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "436301a71b727a6b5aad0cc9237025466aec9c6fb0dde3472769df5262188984"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FBSDKCoreKit.xcframework.zip",
            checksum: "f98859bdbd255cbe669361da98fc359dba7554292753d1198cadadb79601b818"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FBSDKLoginKit.xcframework.zip",
            checksum: "417843f71c6d7c7b3e4f45d725214d20dc6aa8728e2eccefb42b47b682106617"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FBSDKShareKit.xcframework.zip",
            checksum: "83bedeca377ac7959fa83c1c77565b9936dc1f62b307738021c6e7d59313a6fb"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FirebaseAnalytics.xcframework.zip",
            checksum: "9149bd50ca00e7e3438a03ef0ce0d89ce67c3dae79373fdb089fc86ae7024371"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FirebaseCore.xcframework.zip",
            checksum: "4d7c8b821a329f52850640e3d8f87024fd0b4b9cd499fd29a4b8cecf83c5c8a9"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FirebaseCoreInternal.xcframework.zip",
            checksum: "27016fc5f44a436457717ffd88cd5c491f6e3e2f63e71ef798454f8d2148e079"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FirebaseInstallations.xcframework.zip",
            checksum: "a787db458456e9e06cc4bd49b72678931e8616a3fa0de0f0de34d78aa2dbde94"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FirebaseMessaging.xcframework.zip",
            checksum: "f1cb843fdd98c08cfc5638cae839245f9d53977946dccbf578906998e292c2e0"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/FMDB.xcframework.zip",
            checksum: "a510eb5f327383dd37401f63f10fc20b65d5ac83ce2eb67317a4acf5f3174ece"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "cafb4b29a5cf3621305aad5272e95e01918ccfd37fe52de0a31544e54312b88f"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/GoogleAppMeasurement.xcframework.zip",
            checksum: "ea314eb263c4295c0b91f799fd87d6155cda03b0dd23fda0c0c6175908f0f2b2"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "dad4e48b9546df7ec7b9a4651dbbd1f6ae58b205ed730777395cfb9f8482b456"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/GoogleDataTransport.xcframework.zip",
            checksum: "ed4d6f21e6fc40922d1a25e9e1c65f308548ef76b9d6272709b9546d487a37d0"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/GoogleSignIn.xcframework.zip",
            checksum: "e28b0673e157f495b85fab204a7eea942233b201b2e429980d14c860c6de45e3"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/GoogleUtilities.xcframework.zip",
            checksum: "2c6f00a87968037ef76d83f6026c118c7647d075cf6b0c7650c1a05eb38c0e87"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/GTMAppAuth.xcframework.zip",
            checksum: "eaa459fc0956334112f7d978ab2179d7c83d0b777051d1eaeea6d3626745c199"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/GTMSessionFetcher.xcframework.zip",
            checksum: "11dccf5dbab4953bf96b81dcc89924518ca6476d47d9abd852da2a509dd6365d"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/KakaoCommon.xcframework.zip",
            checksum: "7e0360bf52c9a64d6f687fed19cffce7e270eff36c6306f1f5a73abb85cdc34f"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/KakaoLink.xcframework.zip",
            checksum: "fdbc0ba16b51eab28c14e5f17be56263248a6e0d936c0ebdcec6e34470558f85"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/KakaoMessageTemplate.xcframework.zip",
            checksum: "947cef5252e3aa869b4272574326583369f9ab8a882a6b9681495a8845eae984"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/KakaoOpenSDK.xcframework.zip",
            checksum: "2db060bd3ec1a070e12d5020fbc99b089eb2b0b5b053901788f0e55752033f7f"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/Masonry.xcframework.zip",
            checksum: "a5b03da8ff14a6e4b4647cb67b995399d62eb2038a5567147451acf89c3ad495"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/nanopb.xcframework.zip",
            checksum: "12ab7cd011d7de94bc2d8c61e845aaa53a95a73077f08a2d5e8aa4ecf4c48de7"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/NaverThirdPartyLogin.xcframework.zip",
            checksum: "9686a57899493e358d47700ea4789a6ae225c50ef2cd1d1783d83c794c34715e"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/onesdk_ios_ubee.xcframework.zip",
            checksum: "1ee95d63076b5ca937f21415daa86fc67f05ec43f870edc8420ab4f05bbe067a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "375ebc363105bb0a1719f2884fcea650f6f359a33265868008acb45a6a533a6e"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "9a9341d112f9e2e34b195e000e110c4068ed5ad89c85a1327836e5a45044a25e"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/OnesdkBaitianFramework.xcframework.zip",
            checksum: "f52481d2c958e1b48585aac5fa56ff35a94304032c8586c39ba0ae33877a24ca"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "a796f7cbb521d6fc321b17b5a7cfb63bd82fcf62d31aabe3cb8367ba58bd9cca"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "a0996edb2dd4998bb1f6a5414750bece77e8b3438fee1937530939e8062ae54e"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/OnesdkSeacommon.xcframework.zip",
            checksum: "ea73c8ba1d9ffbab1bccacac93df01d215feec965177bb9ad2ac7b556a047376"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/OtherPartySDKFramework.xcframework.zip",
            checksum: "ac9cefec7eb14d597ec59fd9dddc3a18286928f479bbbb064796bad224853107"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/Promises.xcframework.zip",
            checksum: "6e3316e5d575cd6d2c6504cdefb84a8adada3e4701386c5e43c1ab954182548f"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/RecaptchaInterop.xcframework.zip",
            checksum: "c0a7b3afffdfbe1f68cc2315dc2831657e215f00be54dbabf2438f34395c50f3"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555679/UnityUbeejoyManager.xcframework.zip",
            checksum: "ac870677c4580ba73f5db09d8c7a826ff22333ee3fc8c3f0b168da9b12208e90"
        )
    ]
)
