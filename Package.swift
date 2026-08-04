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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/AppAuth.xcframework.zip",
            checksum: "64c2bbdfc97c61be2a95e07cd7530bf5f12750f25783a8f47a28fcb11cbf2535"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/AppCheckCore.xcframework.zip",
            checksum: "1820d93d877fd891441502e62053590daa2dbdbec4be9b615cc06f7b1c9ef910"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/AppsFlyerLib.xcframework.zip",
            checksum: "e2a7207bbfb4608d8d07e02b3f489a39dca2ffa28d72d5bc9063bc8c094830d5"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FBAEMKit.xcframework.zip",
            checksum: "6e7595466515d5028c8115794a4f502a976acb8f22ddd0b749b4c58c35904050"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FBLPromises.xcframework.zip",
            checksum: "a44b84f1effde16a8bc32c8bde402208d9677493218512cac9b8cf34d1dd13a3"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "6b1dbe90f2b3a3a1a7221c99828c2b7af5698ace399724fd060655c107557c43"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FBSDKCoreKit.xcframework.zip",
            checksum: "600abbb8c8aa1e06956b3cd030823c5c89524001f1f5a93a13b4f0271a48c6f8"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FBSDKLoginKit.xcframework.zip",
            checksum: "9d80c7a42c73c25592633fd4e34b8d23be8e74f6bc94a47542c52412a87939a8"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FBSDKShareKit.xcframework.zip",
            checksum: "b14a11978385742ec39d75083485087168e37d04ebbdb72fe8705064fe4e2e18"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FirebaseAnalytics.xcframework.zip",
            checksum: "3e5ad45a1d91b576f1d70d8197923b8f10e521144b2b0b369aa3b71de55e99a1"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FirebaseCore.xcframework.zip",
            checksum: "65ea276b686910e02a13c46ea2bc26239005071ced9a0c9f17bb63a4f444b2e1"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FirebaseCoreInternal.xcframework.zip",
            checksum: "fb074f8bdbd19f6ae9be5acba2cb6273b0a20b3f4dfaa4d780f5f49ce4aa19a1"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FirebaseInstallations.xcframework.zip",
            checksum: "a780592e6cdf9e8242f22f43a583a8b36a571bce0dfea4d7878fef0d0a76fc55"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FirebaseMessaging.xcframework.zip",
            checksum: "b51e09a4c6cd04b73bba76862e4c61c7aef28ce98a1e3c0ccd347315cf113af2"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/FMDB.xcframework.zip",
            checksum: "aa0325493a7293e5783b08f6093f26ae179c0f68d073fba15c0d372ff43e894b"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "55653c853fa041e947cb455035bd6e8b69d8bf9f20ced6e7462ed1ef379c8371"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/GoogleAppMeasurement.xcframework.zip",
            checksum: "271a9dda7a3d23f9313abe7edcb72226a166b30d9d5a75fcbc38389a108b6043"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "aae7182badd81a0c15e05f5614135d7527a188a01a634bfcbb13ba75e7b2d558"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/GoogleDataTransport.xcframework.zip",
            checksum: "bb085fb5d6efc50acd3b5d6f9f4f5838bc0658e3dbba6dfc8754e11df3896a94"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/GoogleSignIn.xcframework.zip",
            checksum: "70a6757ad6568f1fa43c458f568559dd6abea44826526ecba1a733aef617575f"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/GoogleUtilities.xcframework.zip",
            checksum: "80f21ca168d5d120d91cdbb27b890854d85b6a8164c722161b692375a7c0d390"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/GTMAppAuth.xcframework.zip",
            checksum: "70d2d1e18b1dc7ec1330935df8f443db007fbb9b9be863536ef11ee12b20e9f5"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/GTMSessionFetcher.xcframework.zip",
            checksum: "c33657e6f5c9634b08d87087c18510a8e42c33fa6c53c88972eea0b709cf594f"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/KakaoCommon.xcframework.zip",
            checksum: "d6a2ea963de94f06807ba76a6722cb01395d26f251e5cbfd6ed235e576cfbd46"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/KakaoLink.xcframework.zip",
            checksum: "0dfb241d91d4f11f253dace44f7250f98a034c472b608fb3f98da0a09aa84b41"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/KakaoMessageTemplate.xcframework.zip",
            checksum: "e7cff395e22d2c6858e9343161a0fc8592ed2121227ead0605a753c9d30e5c78"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/KakaoOpenSDK.xcframework.zip",
            checksum: "5c8e4ea70513b807f41c07cd7f9c26c4e5c8c4e1311650a50bd60af8b8f23b5c"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/Masonry.xcframework.zip",
            checksum: "63142386d1071658c4aa426aa033f7f3dc4de3a06d07c417cca02847aa2c26f2"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/nanopb.xcframework.zip",
            checksum: "c2a250b983a58c54a014cadba4e6818fbd555890b3c3cc4a857d6ef72fa6249d"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/NaverThirdPartyLogin.xcframework.zip",
            checksum: "cdb3db6e80f83648e6e4ce5267f9ae56100460faa469c30b4913c25d0ff5e8c7"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/onesdk_ios_ubee.xcframework.zip",
            checksum: "a775d0d95cf6b3d4bf16ff32ab2a427b0fd8899f66abef8803d77ec687f5ec57"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "a68bf78a3be4a081c7215d8d6b3801fcf170042de4bb960c6c39ea0db469e964"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "fbe343cfe983daf7923277f070ffe0e81748d5afe3231da630f80a1d3547ecc5"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/OnesdkBaitianFramework.xcframework.zip",
            checksum: "e7f918398dcf1ecf64e2fe25c0debf0b24ce35be491633aba5263b00a36a68a6"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "37b589d295aca94d7d3906a67292c6d6cdd951eedc9c9451e9302887937988c1"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "6ecaf7ae7336b2c4fac0ca4dfdecfbce031e389350a17a345eaef59dc96c8ec5"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/OnesdkSeacommon.xcframework.zip",
            checksum: "128c57083f5adf85a0ca308857b176b6cc01366148e8a3134f7855a97b67c3ac"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/OtherPartySDKFramework.xcframework.zip",
            checksum: "cf3f36df0db3715b74446c8b2ee60b8a9d7cbdf2e8a80b64a84a91add17d65f5"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/Promises.xcframework.zip",
            checksum: "d39c59ce27a1acde0c28bf5e80e9a8e07cdaee3cd3532637cc393a377866203e"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/RecaptchaInterop.xcframework.zip",
            checksum: "feb9f7825e5cc4ae7623d4553c5213db0e6b536199c13f8fb88c3b464c8a4eb2"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1499402/UnityUbeejoyManager.xcframework.zip",
            checksum: "d4ac114e558d12b756cf4e3b24be2d41a076ea180222f013e0a50c32cdf1398d"
        )
    ]
)
