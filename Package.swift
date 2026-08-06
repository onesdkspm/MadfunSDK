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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/AppAuth.xcframework.zip",
            checksum: "6f73c0d2655fb8c0639d536d5c82634daec2dcccbcf3cceb0b02b822de1ca1a1"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/AppCheckCore.xcframework.zip",
            checksum: "b45e7f1569a69e335716e27dc9de292d636d26d4396e11706b23f4453939489e"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/AppsFlyerLib.xcframework.zip",
            checksum: "1e20d2fc3b8c41802ee7f00877e6ab038bdbd058d37d0c089f6f326e2b48c804"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FBAEMKit.xcframework.zip",
            checksum: "a5104c41e085a4284b05d9f86045ed960d18ba7d6ba356201bdf981e2e34846b"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FBLPromises.xcframework.zip",
            checksum: "9beeca5398f602de99c670da79eb61d32c6e982c1983ebc4a96fdcf819f43287"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "3810be021cbeac8dde2c57db9492d77e7de875461e5693c3e5d882bcdfec9086"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FBSDKCoreKit.xcframework.zip",
            checksum: "6187963a8105ccef27ed4e85f307c27d784c9f084cbdb18a998975e3a9cc739f"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FBSDKLoginKit.xcframework.zip",
            checksum: "8510cfb66c34cbd6e6a2a66635d709961dc388be06171b66cd1d037b1dca38fb"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FBSDKShareKit.xcframework.zip",
            checksum: "e48f5e5845953d39a96520584224e3e01982bad0fadac30e1e9db312e772ac67"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FirebaseAnalytics.xcframework.zip",
            checksum: "ad9d24637b06311844fa41c89b9a7a33c52421183b10075c0566f8916c6bd8df"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FirebaseCore.xcframework.zip",
            checksum: "30aef19dbcb6b03082a74ee2a2847c1a53e08c28e769aa72fa2b6a57bca6c4de"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FirebaseCoreInternal.xcframework.zip",
            checksum: "1ec95616859616533e4289fbb9348e37e48b3e632aa85293cd4a91cfb894d1ae"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FirebaseInstallations.xcframework.zip",
            checksum: "90ea0b070d0ab05d5e799b48f58cb2411e4bf35b03327759a8e4a5bb012f7bc7"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FirebaseMessaging.xcframework.zip",
            checksum: "1487ecf2666177de058907fcd6902258ec2233c7e6949224206f6000dd7d70c5"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/FMDB.xcframework.zip",
            checksum: "fc2daab345de216eca518a591b5f4c043df5eaff9f162a3085e87aaf8d1a4d8b"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "0f63f23553b91d65826cc1f9eab9fc2ef597d43b8167c357ffca763360560999"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/GoogleAppMeasurement.xcframework.zip",
            checksum: "2198d26050fb411ed6dc457386368fee11c04f3a275718ccc8bc1bad19db5fe2"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "607f1242f9e11f1ff951ea86c32b2a346592045be7fea0fdc4b5cd493d6eb505"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/GoogleDataTransport.xcframework.zip",
            checksum: "97adf3685e34309a403217eb2f123a04ca138e4f4eefdf7e9f1d1bfd37cc3540"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/GoogleSignIn.xcframework.zip",
            checksum: "ce0bad83314910cf6bfdfb60813c36156bcce68f213a86e8c0819188f2a7e8bb"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/GoogleUtilities.xcframework.zip",
            checksum: "e8fdcf4114e2730207012e9b8dc279ebd915f9fa50c48f680666788330b7c942"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/GTMAppAuth.xcframework.zip",
            checksum: "5052edc40ea9d9d5c9f2d38d78a29470e61013e57aeafc6df79398d4f4479827"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/GTMSessionFetcher.xcframework.zip",
            checksum: "1cae870067cf80cdcd4f9994fa536ec849523045e57d95d7fbb0fb1c91fe46c6"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/KakaoCommon.xcframework.zip",
            checksum: "1f0a88683d3428102b7fd0acd03cb62837bbf65273783be89c9439cdb640b549"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/KakaoLink.xcframework.zip",
            checksum: "7e4a6b4c7097c735ebdd6c086dc977812319d356eac55d046997c7f3043780e0"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/KakaoMessageTemplate.xcframework.zip",
            checksum: "2c0a736b945e6311e176023243d466864f3c1011fae79e82d6eccaff266921df"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/KakaoOpenSDK.xcframework.zip",
            checksum: "f48c1172149ce817c404fb658964d9cc56342dfd908da4266b36166570fd97c0"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/Masonry.xcframework.zip",
            checksum: "a1552bef6c3a2c3db1ec929a99be5b6bef662463e7c55f7d27814f6fc34f55dc"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/nanopb.xcframework.zip",
            checksum: "dbd54228cc599f1708336212a1cb018bb9c04c87f89a5c9cdd39cb1fb1e56236"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/NaverThirdPartyLogin.xcframework.zip",
            checksum: "dee1531195e7f40769594f87ff3c76941e1acd6988685f8c6142fad90f98d383"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/onesdk_ios_ubee.xcframework.zip",
            checksum: "081f785de2ce773db403d99909bc72a49d9661b0853373eb934ad789531c0ece"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "4598ed0d1e0a892f03c5145eeb64a576806be02b6eadcd5939cd21c32ef4003b"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2cff33cf34d281f7583d10a89d3479d9da7320931ae312b03276db1fcbf45344"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/OnesdkBaitianFramework.xcframework.zip",
            checksum: "2e50f2de13165abde4862bbd6dbb50c3c8200c12729eb1c0100cc3b9f3ee6217"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "f8fcd0a3f8051ef3f46c60469f2c96273a85707c998d7fb83182704babe27a6a"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "04078b92fa4c820a28efa601d5fa7be02f659ad25c132f9b9383e30c9c0527a7"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/OnesdkSeacommon.xcframework.zip",
            checksum: "fe8d8454bccc75fcfaae4cdb07c495177eeef20cd9705dbfbbe84754ee379807"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/OtherPartySDKFramework.xcframework.zip",
            checksum: "b314c45a4f1971697ad34c0bb375a3e3406a1da3dfe5edbc4c755fad05e570b4"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/Promises.xcframework.zip",
            checksum: "157c08dad0bb751a19980949c4a6a836cedfc6ca7dd2b950eccc38a744c73656"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/RecaptchaInterop.xcframework.zip",
            checksum: "634e842cc4cd67c910afd92b2634187179da4b6a829089b26f8b6db384efab44"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501191/UnityUbeejoyManager.xcframework.zip",
            checksum: "383e400809c18ea736b70019cc9fac9c1446219c99752be88fce7724f0e269bf"
        )
    ]
)
