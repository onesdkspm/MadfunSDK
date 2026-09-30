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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/AppAuth.xcframework.zip",
            checksum: "cb126088f9d54c4e3881eb4fd885273bce9a71a6e11c8a309504d9019d8fa40e"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/AppCheckCore.xcframework.zip",
            checksum: "b337a536acbb0aa5f2f2a7a0fdec747ec451f30a4c58f673c507b47a88050137"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/AppsFlyerLib.xcframework.zip",
            checksum: "a138a3388a28dd4b0b913b765f6e702dbac344a62ec9558083c4ccf4a5ac29ea"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FBAEMKit.xcframework.zip",
            checksum: "b7ebb0b9366077309fa37c92abc920b2338557a1068d0253e8c8b2a3569861ef"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FBLPromises.xcframework.zip",
            checksum: "6b8d78fcfa333ca6033590e9993591621bdaca81e4bee066379df2f0e7c7eab9"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "1d564950b7fae9b01e15b1930af1856a1b007665d24f7a6025a68d321e9afd61"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FBSDKCoreKit.xcframework.zip",
            checksum: "818c6121020aca6c1e8f015bd227c542e6a3c281b2e7571d3aa626c41b5318d9"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FBSDKLoginKit.xcframework.zip",
            checksum: "0f1c8b2287dbfa7e31fa77d002c9e89c4430bd431c8e14f915ac684e27b54426"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FBSDKShareKit.xcframework.zip",
            checksum: "eb49f155d00c7298c86982a6ff7f538ccb5214a7b08dbfb5048f161f2b0ee2d8"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FirebaseAnalytics.xcframework.zip",
            checksum: "d311220e5266f5c3cf5f576828e782dff1084d67f58f9670b38cffe5232d44bb"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FirebaseCore.xcframework.zip",
            checksum: "535c60efa5eae82a1d8b793bce30a98620da19d48d315ccaae517408581ab322"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FirebaseCoreInternal.xcframework.zip",
            checksum: "3711b8beaeb4b5b0b214566947b14094d08ce79bb154f5fc7df22bfed8e28d58"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FirebaseInstallations.xcframework.zip",
            checksum: "02a503aba29b827d5bff1e1c7be8544a32277ff08b42dfbdab18fb3c62a1ac6d"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FirebaseMessaging.xcframework.zip",
            checksum: "00e51a7fd07722ffa39a0797e18443f33a3965e745391110d59d0cc4c0683765"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/FMDB.xcframework.zip",
            checksum: "70ba54146f3cf553406e984b80651d762a866b854bd1859eba6895e3f9cde5e9"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "1c90478148fcfef67ebb4518434eab18d72c7265cba5d6a885b2d2af1b45cf6a"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/GoogleAppMeasurement.xcframework.zip",
            checksum: "a4b6a13f1d6d62bc8de1110079ef33824ea800726dc3138c4cf60aa5e848aa35"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "fc2fa7630b7ece6c30232eccc4783a629b87065123e61cc348918ed812becb8d"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/GoogleDataTransport.xcframework.zip",
            checksum: "0d8f17bc32075d9e7116ce81aed9613cb3ea98c3efac2ac5ad200bb273c29501"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/GoogleSignIn.xcframework.zip",
            checksum: "6c32dd59bb42694046d9c9a6b026182a9bb2d8bc7b04299698b4dde565b6c2c4"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/GoogleUtilities.xcframework.zip",
            checksum: "7eb3a1dbc4a65b1c71f210213d28bd72d0870a7f5d703aaf727af473179a606d"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/GTMAppAuth.xcframework.zip",
            checksum: "4721320d4c523a0282d11d2141233838def824232cb81a287f014a294a19cb36"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/GTMSessionFetcher.xcframework.zip",
            checksum: "e71e6edd3e9d54e1c680cfdb587306b99b80b2efb25585c38444a1568deaf180"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/KakaoCommon.xcframework.zip",
            checksum: "42074f8a692972efeb10ada1e5504aa213f76695cfd60e40245ee04cf2d57b94"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/KakaoLink.xcframework.zip",
            checksum: "ca96fd8f8358c6ecfcd8058fd0bc16d953b458fb09731110c9fe5aeb161469e4"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/KakaoMessageTemplate.xcframework.zip",
            checksum: "7710e49106cf73e91e266c46f0307defce37ece34dbc073af1fb724f985c33d5"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/KakaoOpenSDK.xcframework.zip",
            checksum: "770038894bcec75bfed9decc9d12d10da98cc8df8624bfd6f28723a267df75fc"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/Masonry.xcframework.zip",
            checksum: "fdf6abc775b1ac1e0c52e152d54092f14398afd51472392cfba3c6da3026360d"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/nanopb.xcframework.zip",
            checksum: "a896ebcfe14044d9ed6ada6ca4a718e247db271bc150dadb77cfcdb02c5ab128"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/NaverThirdPartyLogin.xcframework.zip",
            checksum: "6411d106db54810b3ceb42597b4f597fb97386b8a5fa0cc49e2acb1585345e83"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/onesdk_ios_ubee.xcframework.zip",
            checksum: "e34989f8fc0bb47de0faf5c2d5599f5609e3a6844945bfb90d717edda4bd4cf3"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "1ded14068f4ffd15f1fb16c97bea3a57e37f50c01431e723208c276eb21a0d33"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "9c7d1e8b7d56dd43b8ce5ac24a5c026a85a9fc27f2e9fdf146b91d7f7175a5f6"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/OnesdkBaitianFramework.xcframework.zip",
            checksum: "0e602b2b1213c7396ed0aab06161eb37c90f70e9f879ddec605d42f52b7f6d0a"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "f842b37cb958dd62ce902a544e5407ac5ce3428e4d406cb175b96c27f6e1068a"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b0c6be15ce19720fc899b4cf17c6e267f94377d323559d89d31150db22020697"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/OnesdkSeacommon.xcframework.zip",
            checksum: "fe964149bdf1a0d39bc15d2cbaf3c27a2a409d870580d530743570ef64736c01"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/OtherPartySDKFramework.xcframework.zip",
            checksum: "d135e63db27dfa330516bc6073edebaf1d2fe4e332e8390327c2eccd732c85a1"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/Promises.xcframework.zip",
            checksum: "7b5c57353edae189ffa2eae9a4be29b1ac7bbd833269d215aebbcca2904479f3"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/RecaptchaInterop.xcframework.zip",
            checksum: "5cd99d3fb43304e53773b19da93b488cb572bc103a8d4b8ce89e9cfa87343433"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1539737/UnityUbeejoyManager.xcframework.zip",
            checksum: "5e7c8f2548422f9ccac1df91faf4acac2f95c4e2d2c367250d1603c8d2411004"
        )
    ]
)
