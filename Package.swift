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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/AppAuth.xcframework.zip",
            checksum: "7b0554c6dfb8fe11445dab8df04e19149a5e4939b0c481fb87095555933c73d9"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/AppCheckCore.xcframework.zip",
            checksum: "5aa726edaba3b3fe51d322965106e622181eb5b641330c142abd42eb411646bc"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/AppsFlyerLib.xcframework.zip",
            checksum: "d8faa6ad71b366be05d8b542e91a983a72d227b742a2db7fe1cd55270b314019"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FBAEMKit.xcframework.zip",
            checksum: "08f91e717c3e3d7aa8d11fda4b3703882b0c72a6f9c14dad00ad994d85af61d1"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FBLPromises.xcframework.zip",
            checksum: "1bb723294c84c7c8c02680b6d6c5eea6ac1d1f5f8723aed793b857d251b8e91e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "0cbd67510cee9dc69afe6711f733c8872d6f35e28fe73a7ae94972a01b8e83b5"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FBSDKCoreKit.xcframework.zip",
            checksum: "17eeac0c2ad33fa08956d65d68b4f61ba48f5385e6c6fd6e0ced20c667e5010f"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FBSDKLoginKit.xcframework.zip",
            checksum: "81c31171649cb7d5fa032edb9984567c5bd02e16b54c5d53f8f389fe3fe0a272"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FBSDKShareKit.xcframework.zip",
            checksum: "63cf45c000475efedf23dcf0b21f955c8e9382a792090394f4c43519c646bc94"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FirebaseAnalytics.xcframework.zip",
            checksum: "219084dd210e8bf9fdd4aa1fc0b1dd1c8147ca85fd9074beb154761904743b47"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FirebaseCore.xcframework.zip",
            checksum: "d7fade1e3f8dc7026cb21a2743f9402b786b22cf64a73086c885591ad677a27a"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FirebaseCoreInternal.xcframework.zip",
            checksum: "0eba808d29c38805149a456b170811ebbed1b80b21315aac29a549d2819b3184"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FirebaseInstallations.xcframework.zip",
            checksum: "d0a4732fd832341dab6fb8564674ade33f8769139641cc43c14fc4a8e34381a3"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FirebaseMessaging.xcframework.zip",
            checksum: "dad21fbe43ada205186dfdb4b5013969b1f3c6f5204ebe7b95fe7b8cca5b7ce1"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/FMDB.xcframework.zip",
            checksum: "58adb59e10aa12e30766f46776aa4b54b195d4b6590fc7302258ee5e150d31ab"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "004c5638c931cc521f60e81a5213803290bd9b12c94604e47da15956378c2238"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/GoogleAppMeasurement.xcframework.zip",
            checksum: "142940bd827fa094e00132c1b5eec8b42fd0f8db7709da23d6a1d6da66e9a073"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "f89b48da751635db05cabba2c6d2f9a1f20937711b54cc795a6126c9383bc467"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/GoogleDataTransport.xcframework.zip",
            checksum: "cb4cd090e1a1ce54684bc0e1165b151b8043bfaa79a4fda838ce665e39886f57"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/GoogleSignIn.xcframework.zip",
            checksum: "f519d11199e17707baf963c0fb6c0bafed557d893ee8a3dba5437ed810c5d529"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/GoogleUtilities.xcframework.zip",
            checksum: "3bc745a7c30234e5fa0799c40e65045ebcc8f24bcfb914cf46badba21e70ae98"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/GTMAppAuth.xcframework.zip",
            checksum: "a3acb9d02b7bba9def1a00c6fbe6208ce2f573e77ac515e280b279f8788c388f"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/GTMSessionFetcher.xcframework.zip",
            checksum: "631226f41bc28ba351c70149992da6cc167602b75ddc9f5195b81f6afc898dfa"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/KakaoCommon.xcframework.zip",
            checksum: "0618a4e7564d230b24b75f8819dadd5ef62abb0ac7504f97b2734fa88e37412f"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/KakaoLink.xcframework.zip",
            checksum: "ea0dc123fedeaf078eff4716662062cdf11ab2a44cd53c75f6bd8f8c7256dfc7"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/KakaoMessageTemplate.xcframework.zip",
            checksum: "a31487f6dd7a3fea33beea31f0db9c532829b4ab9255624444643fba7308b535"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/KakaoOpenSDK.xcframework.zip",
            checksum: "c6d9ad7cd129ca03b7287292f4662e5589bcb0bffcf8f23c85bdae0cb43cf88e"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/Masonry.xcframework.zip",
            checksum: "f22a78a8a2f7172f6c85becd2c37857f5d97cfdfb72730bb0fff7b4be6a7d4bb"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/nanopb.xcframework.zip",
            checksum: "4f0e35ed671f5f87b502559820f4c006fa45690f74cc9709894f7620e34901b0"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/NaverThirdPartyLogin.xcframework.zip",
            checksum: "29958f4bf5bc659862e57934c6b3945fc8a28eb73802124756f7dcf08fbd1c61"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/onesdk_ios_ubee.xcframework.zip",
            checksum: "772b931167f364e3cb5842c84b7e444e10bb54e807d194eeb09ae3645a177e92"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "758798f5bf16d2e99112c84ecb2f8d7021f9d63a945a593a553745121414b571"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "32fb713946551af9de562623125a77e40c2a6b69848ea9fc2d039aab96f0791c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/OnesdkBaitianFramework.xcframework.zip",
            checksum: "34abb9cf69a3439470d87d9ba8afad18ea1d790768f91c13bade779ff231c83b"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "1f145beab5db55cbfea7073663359dfc72d9b5e684435b98dc21943c3e7a5011"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "16f76dfa0e594a1a63eaf437f7727098f34d6696dee511749d7ffcddae7caf5d"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/OnesdkSeacommon.xcframework.zip",
            checksum: "3e648776b4ff37c97418439e5cb890be17bc55412a752277ed0dec62f6a2881f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/OtherPartySDKFramework.xcframework.zip",
            checksum: "eb810a6304cd03bcd93bab8893064a9fb6f6b50a3f5ece37c7f1c9ffa3c8770e"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/Promises.xcframework.zip",
            checksum: "1dce329ee9ad13385ebbcc49fd8ca77edae49c9b9ccd10fa1b0cf6e7ea09686b"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/RecaptchaInterop.xcframework.zip",
            checksum: "39b6c7d48479cbc929782aa06911a83ebe24a375d8f71c07f0dcd1be7b36c097"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1497513/UnityUbeejoyManager.xcframework.zip",
            checksum: "37fa7e8828dfc495a7619274276e3648fd31da7aa493cd0385aa936b4d75bbab"
        )
    ]
)
