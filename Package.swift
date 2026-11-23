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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/AppAuth.xcframework.zip",
            checksum: "4aa81a1a649ff49799b60418843d5b0b138bb11bb50c786bf27391c3be6a1bc7"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/AppCheckCore.xcframework.zip",
            checksum: "550e4494e2420197ac75a663c3fcdc4029e18cb6926927ee609d6e25f29770a4"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/AppsFlyerLib.xcframework.zip",
            checksum: "9333cb747b88c7474cc8fade553a302cf61c2e3ac8b737f8543f385e2c1f91a7"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FBAEMKit.xcframework.zip",
            checksum: "43d09cae5e78992322be80d1221e5717d3a943edaf6827569053db129262b175"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FBLPromises.xcframework.zip",
            checksum: "f36ce82f8af7e1293d9945a15dd850f38a22a88fa0f847d9032ac08414023ca6"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "9d7a70d960227a28fb2aee4b258c65ac5e3f32a6ff72c9fd2026af5943e6e5bd"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FBSDKCoreKit.xcframework.zip",
            checksum: "c9ca6a2e8e58923510730d564a5d4c6765fc386e90e149986803405e95548ceb"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FBSDKLoginKit.xcframework.zip",
            checksum: "938f6e5ba428b501fcd2c322673bda29ce6a52eb3bd3caf77091d8af6db18933"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FBSDKShareKit.xcframework.zip",
            checksum: "89c11f1ea4fda03391e7ecb2dc3a73c549e9a3e769274b7b4245cb1322aa6348"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FirebaseAnalytics.xcframework.zip",
            checksum: "e3d869aa06eef27e386bb9a685ae14847b40a5d9ff23e8ed4ced7f8f42c5e2eb"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FirebaseCore.xcframework.zip",
            checksum: "e9e24303f6c86344280397da17e98f852c32511f945fc62fb3bee4cf2b856492"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FirebaseCoreInternal.xcframework.zip",
            checksum: "b74e092a20d0b6fe832408a8c8560d377f3aa0643c16eaa6c5229a76000a8d43"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FirebaseInstallations.xcframework.zip",
            checksum: "5996fc4e26f02045fd8a85c87d20a21428b8cdcacd7bec846511f596976733dc"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FirebaseMessaging.xcframework.zip",
            checksum: "1aa8e5a7e3038ada2937d5bcced4a5ae5cba7f02c679d83e22c9b70735182860"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/FMDB.xcframework.zip",
            checksum: "d68dd0a9cf5d192613ff56eb3c9d2346faa6cebb6cfea6af87bdf03bc03b2572"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "016411bb93307d0ff77383b5cf180deb47ca994a98c0d6f05c44ab7b4d8792a3"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/GoogleAppMeasurement.xcframework.zip",
            checksum: "f5c1dc722bdc64dde7cc2458868d6452a22104519d6fe751092d5cc5a9e7d2e9"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "bfbe0ab8df84094770beec13a2be17f86cd896fb0997bfefad30e21a9ed76b10"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/GoogleDataTransport.xcframework.zip",
            checksum: "8c18664ff629863a2805374d243394063b94fb943b9f5f2e047faffa18780b5e"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/GoogleSignIn.xcframework.zip",
            checksum: "625c27d7ceb1a8c0a0bc8b327e117524b7ba7e35eb42a28729fb3505271baf67"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/GoogleUtilities.xcframework.zip",
            checksum: "21332194d121642ee7c02bc3939d9853929ac10d41cb25dfea4cc527e19ddb90"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/GTMAppAuth.xcframework.zip",
            checksum: "e5d89182ba4fe19afab89020bef214a0724cac9f0fd8d7afdd9de103f71c04ef"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/GTMSessionFetcher.xcframework.zip",
            checksum: "a677a5694ef5f1d49d67f89ae68f62803db6501ce22f5c17c4cab419392ecc1c"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/KakaoCommon.xcframework.zip",
            checksum: "f828506a75f61dafc7da71369a5561314396320ce7b88c9ad23ec9085d4da419"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/KakaoLink.xcframework.zip",
            checksum: "0eb023bec6e95ad1351f7db8cd9357b5ba1f681a49690e719fdcbd7d8ce2d9ce"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/KakaoMessageTemplate.xcframework.zip",
            checksum: "f118dcd636329432ccbc0eb549f3171617be829aa0dd35c03fcb93e0112e4377"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/KakaoOpenSDK.xcframework.zip",
            checksum: "60cbeb1ca7153772881a508b98f6871910b136d8af2ef15bc333f34469e02f8d"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/Masonry.xcframework.zip",
            checksum: "c38899d79446fc35520bd9a18e6bc9f7e4d4c3ffa482c5d72c616c59d8f2a05c"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/nanopb.xcframework.zip",
            checksum: "8d94d90ee5d5a6b72b287008f01b75a5eb50c5acea30dada49b27f152aff6269"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/NaverThirdPartyLogin.xcframework.zip",
            checksum: "33aefa4574358ca523dfb72354d80a4af0385e6331fdb7d0ba52054611c4b5e1"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/onesdk_ios_ubee.xcframework.zip",
            checksum: "4e6a9d8ad8f1df1fe4a408a0724c5e77499ebb00d5f90ab76031d49f402fb545"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "1766e026a9776046fd3cbf3880df888c50bad8cc5c82421a4f571d93dd92e69b"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "812aee204b384f139a6b008108661c11238d41ea4d41c822fce263c00c4bd1f9"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/OnesdkBaitianFramework.xcframework.zip",
            checksum: "feba3f126aaee680e6c9db9722a412118de971d4fea21167abc719410e7efabf"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "d6148fe291b384c67a336edb30169e41f63089f5ad3ebcb8b45e6de9f1b1a88a"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "7159240de054c1a5ab0bcc6d8c6b09444d3defb08ead64e4621967d4e4b2d8ba"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/OnesdkSeacommon.xcframework.zip",
            checksum: "aff193cefa2dd72df71a2f07cc29870ffe59d4bd5ba28997e1aca5ceac47dd7e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/OtherPartySDKFramework.xcframework.zip",
            checksum: "02d5f8548a576214ee88594a8aafe4f22b17f2cf89631165ab2f6e457fd4db95"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/Promises.xcframework.zip",
            checksum: "83bb15bdf4463230194cd64e4b91e48a451a5ea3c03b3d403172ca7ad349ef84"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/RecaptchaInterop.xcframework.zip",
            checksum: "5b0257976be647a7622868fa57868bdc3fcc6b41326025ad2f346694d36493b8"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.4-dev-1573371/UnityUbeejoyManager.xcframework.zip",
            checksum: "dff6f409623dd4e39a90803a1388ad54332eafb56c1f42db36ab1fde4bf223e5"
        )
    ]
)
