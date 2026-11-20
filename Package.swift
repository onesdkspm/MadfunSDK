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
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", from: "2.0.4"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/AppAuth.xcframework.zip",
            checksum: "b75e36b56b985841d1dd7e170058ff564106de770417ba8a05da3722fddee070"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/AppCheckCore.xcframework.zip",
            checksum: "ade601993a6325ecedf93eee146ec408d4ceda0dadbf2e10fb516295fc6dc102"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/AppsFlyerLib.xcframework.zip",
            checksum: "3d39cef2513ecdfaedd4f5e1b03aaddfda29a6d4d639a9a27bd74d8709be1c2e"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FBAEMKit.xcframework.zip",
            checksum: "aa7cba3ada5399a1034821d53efcc4aa8ae50d91a86565b63e093b8bbf1be6b3"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FBLPromises.xcframework.zip",
            checksum: "a1e8f9f5009450b4c941bacb23457e7ecf564c74d00866aee62242be73adc8f1"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "15b6feb6ab98c19db5931fdbf8dfac61f57cf3ac7b296bc069c58792f752abf3"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FBSDKCoreKit.xcframework.zip",
            checksum: "3f86d9c160fba7a0841c91362fa24244ca7eaee55312ee61772e0fbb6f6ef29a"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FBSDKLoginKit.xcframework.zip",
            checksum: "a76c0c3a9f75c0dba1a17597367027e36dc4ef9342762fb6aaca1b2397140f4c"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FBSDKShareKit.xcframework.zip",
            checksum: "b116ecb5e7e1a1ee432240b1821c64ad00d1bd5264e1e1158caca7d4ad374a53"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FirebaseAnalytics.xcframework.zip",
            checksum: "40955a26b540ae34abbb4d82bc1b9703db00aa9b3b0d1c51c13d623873c2e30e"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FirebaseCore.xcframework.zip",
            checksum: "e2be363ad658c06063dde713781e770fb9bd64c0671e4b1c3f03626c52f4ccf4"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FirebaseCoreInternal.xcframework.zip",
            checksum: "afcb309ef78e83c61d76d02df0fb31d90c2a89e06a896c2cca3871b6176cc5bf"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FirebaseInstallations.xcframework.zip",
            checksum: "62f1b7a3dce8b58b3b3968d4fdb302048441305e3871f03e12e9d4c68502777b"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FirebaseMessaging.xcframework.zip",
            checksum: "4df4380cd7176234dd5e9ab5bd43a4f84a22f100cac7310168fc7b3835aec51f"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/FMDB.xcframework.zip",
            checksum: "d3a2f0646e542e9c743f363632001fea864ead2439ae0ffee150688433650bb9"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "7e8958e1f5870c012e68898ad15f02e04121e4beb47d254f58e06e078d9dab58"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/GoogleAppMeasurement.xcframework.zip",
            checksum: "5148d2d4a80078b2613bb04fbcf0b033d2fbc00e5e47552855d03c7abfa5db50"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "90c6fbe5fdaafb44ed9b80d98eb2ba442e891b59b06c2442e6d422b98ea7928e"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/GoogleDataTransport.xcframework.zip",
            checksum: "d721b2602a5289060e49b54f05d63bdec8433ab5aa9fe29771b08dded6ab038c"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/GoogleSignIn.xcframework.zip",
            checksum: "8d0ce4f59005328b9cce2f1e034a87c0e71d736dd494b7c40e4f6310b96c38bc"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/GoogleUtilities.xcframework.zip",
            checksum: "5c92c7391f6885d14450222f1e8c87f03389cf33a3d9834d8edb13d757c3e525"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/GTMAppAuth.xcframework.zip",
            checksum: "2c3c57f42cfd2a7b88d72ed5e95595a69654b388f490cf4b6581afdb4c515c75"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/GTMSessionFetcher.xcframework.zip",
            checksum: "7683c13acb23f1e6d366f55b75ab3c8f2c1c96f84bef94f137cf85647f7b398b"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/KakaoCommon.xcframework.zip",
            checksum: "78089c0ab1159be5f61b813ac5eef1b46c120515c20250b42dac9b40706199a6"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/KakaoLink.xcframework.zip",
            checksum: "8512300cb4bb97d0c5cc104b70a71030b76889631d652bccf10c926452f2161a"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/KakaoMessageTemplate.xcframework.zip",
            checksum: "2788ffa0f6bc11ef2b1922362580c9b5a8896032e566d31e07118e120450f7f9"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/KakaoOpenSDK.xcframework.zip",
            checksum: "7504465630d88224cc1df8bd719ead854baa587fadec0480117641feeb116140"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/Masonry.xcframework.zip",
            checksum: "5245cd4e70814458889f9077fa1fda7d0879d3a13eb64859c9c2ec7b6da166ab"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/nanopb.xcframework.zip",
            checksum: "c669991e5010f5272879d8d02ec7ca22b9281676679b551b8bcf605e031e7efd"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/NaverThirdPartyLogin.xcframework.zip",
            checksum: "878cf09b2fca8a8b665413c6cee9f22defb1458c9100a5f94f571329e78631c2"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/onesdk_ios_ubee.xcframework.zip",
            checksum: "6f873936a35d007ebf30787299bfed125c448d803e08771c21d881f82f87c9c7"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "d68ea9e0916856631827a556e355bfee0820e58c06c4f79bc3662d3eedb97353"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "19c754f6188c31f2662798dd9cb8810565b25e5d5d8d4f3ab4abc8ca81698163"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/OnesdkBaitianFramework.xcframework.zip",
            checksum: "8c070444b194fbf81a477aadc0d133f175df958d1a47b5459114775c5dd95ece"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "e42b53fc91505aef38fb82a5fe9179de014c824043600e7a9cd8f98ff84fa4f5"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "5940855f80e28fc9ac5a7aefb2cba8786e3c43d0734d010e534781b8bbf919e8"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/OnesdkSeacommon.xcframework.zip",
            checksum: "5fb20c82925291ef1d348ea62c449d224c976d171cf92c656a0f88ea22c632c0"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/OtherPartySDKFramework.xcframework.zip",
            checksum: "f98dd0e527219c72e867e1d878ebfee41367496a73a184f1ed4e2babf5f02d33"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/Promises.xcframework.zip",
            checksum: "f7161918a1362233cb91621905564dde6e5b2a961be3816c8800da937a4edf66"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/RecaptchaInterop.xcframework.zip",
            checksum: "85f20599087a54f2fb189bee44868907c0757b6b911eca3d436f7777cc3b695f"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1572534/UnityUbeejoyManager.xcframework.zip",
            checksum: "6b7018c69a9fab29f7b636f30f7b71239426e485969daec52629883d7887af99"
        )
    ]
)
