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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/AppAuth.xcframework.zip",
            checksum: "f925dcd9349474dd2273b2fef85ce1b1c68bb2a08d437bc0d71adccf5d2b0ab5"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/AppCheckCore.xcframework.zip",
            checksum: "990df0ed4775f44dfee8de37ed5eb6124e3a7ff2826264b5e7aa914e3e20b658"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/AppsFlyerLib.xcframework.zip",
            checksum: "917e775fff630b623a858b727b13fd5dce3f80f8af60ee66ba1c9dacd3e308ac"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FBAEMKit.xcframework.zip",
            checksum: "0bde37f8bdf99b3baea1cfa6003e623946c7786ae26da9be8dc7ec049c62e083"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FBLPromises.xcframework.zip",
            checksum: "f7980cf48c5991f03f4f8503b5394ae99540daca2d67d3ca3595a7269960f1c0"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "fbd25074bc0cf7951cd5520b2f78c9836caa753f4aba6f8b8c9ce0a3a100feae"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FBSDKCoreKit.xcframework.zip",
            checksum: "e4f54a05aa4b6bab9026aed9a25d106217e8dadbcd47130b71557cb889f4c53e"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FBSDKLoginKit.xcframework.zip",
            checksum: "da6ad6b87ba8da7cbb598e35c65f26df94065bdcdef7f3316ab6253f52e2aa7b"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FBSDKShareKit.xcframework.zip",
            checksum: "cc7c3d47216a1cda624da5fc24899c36e2cf8e3902c56023171efa9ff8b6f70f"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FirebaseAnalytics.xcframework.zip",
            checksum: "40dd6a076076b00e7ad97fa513bd14d264ecb8484963a82aee5cc16702a92e01"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FirebaseCore.xcframework.zip",
            checksum: "5f9a7e37118694c4c02934bd0307dce65065f1353040003aa381233d3289e576"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FirebaseCoreInternal.xcframework.zip",
            checksum: "1c5b87f2475cc8f02524f18df9c8f40fbe588ccf1a0b37dc18da8daf857d43d4"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FirebaseInstallations.xcframework.zip",
            checksum: "24e6d8595d043473c5933e029c77098a0d32da2bb0db0abe06a8efe3ae174186"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FirebaseMessaging.xcframework.zip",
            checksum: "8b9d7765bf4cecfb2149d58ef0a4ec6894a7a3a21e3367097c993fe4eb634096"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/FMDB.xcframework.zip",
            checksum: "3a037f33772e3f2c87ee22e22606898fda50b08ecdadf57b988ca2cea76b9b90"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "a2926bdef55b74c643000f48185ae2375cd209caca017495a7a28a0274b3d27e"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/GoogleAppMeasurement.xcframework.zip",
            checksum: "f8ba38004be5c1a5dce5bc7bfea90d6419d1b453a20ffa7c8d4198196121cfae"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "f8fe958ed44e747f4402b02303299f551e52421c1fa55bb26e40009336506374"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/GoogleDataTransport.xcframework.zip",
            checksum: "c3d45f1ed4075c7b2422bd443dd5037936382f3fd735af23e605ad696565809a"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/GoogleSignIn.xcframework.zip",
            checksum: "32e82674b0f12d34a8c4bb3d4cdea9a1c301045acab762b577e5808483281af8"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/GoogleUtilities.xcframework.zip",
            checksum: "89d3bd2e1c386d16adf441613fd2af19b50cb19625aacd2688621fd3273b9ddb"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/GTMAppAuth.xcframework.zip",
            checksum: "6b2788f8a13c7be916394597f74d67d51fe723faf214f10f6c4729e44d9675dd"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/GTMSessionFetcher.xcframework.zip",
            checksum: "331eeb73df98c19f61b050f07f8093ad3354d96be21b9def85c1f4e23dfe5230"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/KakaoCommon.xcframework.zip",
            checksum: "b76ad05d0f481eb6aacbd58f5aef2825ec0142fd6e160c8eeb49ab319c4b3dfc"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/KakaoLink.xcframework.zip",
            checksum: "54035870871ce3771e57862a616b27226d891ae06792d5c87d8d933b0469c2ae"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/KakaoMessageTemplate.xcframework.zip",
            checksum: "7124ecb17f57adc0c7893d69e87716004dac35f6254a6a96cad07e1d0a4f54b6"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/KakaoOpenSDK.xcframework.zip",
            checksum: "c58edda9ffa74a64f93b7aa8e3c9519849797c428fabf078d2d0f4c16a633427"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/Masonry.xcframework.zip",
            checksum: "d0a8c285c21268b81edbd327f07f7a3590a6dfd9448da750ade71aca3bf99301"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/nanopb.xcframework.zip",
            checksum: "82690d2ee9b63d62f8c465c3f974271f75bd239630c562841cac16dce422d1d5"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/NaverThirdPartyLogin.xcframework.zip",
            checksum: "4407cc2fe91b826d54ea36691e502375e03245776a9138938d512f647de9ebf0"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/onesdk_ios_ubee.xcframework.zip",
            checksum: "07684f9e056d23c7416f649460ddd225699d8709aa246e261139a27503f7c783"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "f183c93364d82ac22380253765ce48a044ce6a4679d7401e05a6ae620e31fbf2"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "852d062f42d13ef04ffcabdf1f5ce01d3068fc2fb2bde33dbd1f2894538e963a"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/OnesdkBaitianFramework.xcframework.zip",
            checksum: "ce9de11a24519acba2d218bf5f5a8a03407dcb21c8143b61beeb7f8abf1892e6"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "2a41006465023eb64100d21d63325f0d0c67c3ef9e1371f4d56dfedeec0489e9"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "5471d9faacbcbab3040394ee7d8a6f34dfb076b3beed9f85913ffacc10f7a8ce"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/OnesdkSeacommon.xcframework.zip",
            checksum: "66daffa7d162ef5c2cb2e0fa8477fdfc4d91e77b650bb5a8c4e2e4d333866144"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/OtherPartySDKFramework.xcframework.zip",
            checksum: "46f7d946cbb699a9d8703743d6954e0dccef09f4d3643ebadd6a1b9991f3a520"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/Promises.xcframework.zip",
            checksum: "468ec713f30982445561f6c94b5e14da6bfbab59c3a6dc61551745734294396c"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/RecaptchaInterop.xcframework.zip",
            checksum: "a33bb15322ced9395ccde9d63a50594ac8cf4adc622a12078e550df8b49ab1dd"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559521/UnityUbeejoyManager.xcframework.zip",
            checksum: "0a03078bd3a9c6c708c92e4656e4c78028c0019c2298dac76c3690480f96bd78"
        )
    ]
)
