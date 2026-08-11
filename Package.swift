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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/AppAuth.xcframework.zip",
            checksum: "284737e65a37f7b3968a3f7629891e477632b4fd441ddaef5c28b09fc73be96c"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/AppCheckCore.xcframework.zip",
            checksum: "7a2226465328e52772439056b9cff45f4ba1a951109bd919cbfc95950f155c96"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/AppsFlyerLib.xcframework.zip",
            checksum: "ff48395d24dfc25a847cceb54171b917e28a1951e612b0a0af3fb695cd8285c0"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FBAEMKit.xcframework.zip",
            checksum: "2e2934d4ee4b9d73ddeee64f9807db8a7492b7e4fc6d021cee8bf777c082d18f"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FBLPromises.xcframework.zip",
            checksum: "e4c40eb6cc34e607a9bd598079c234e4a74889ab50d0f3aad340509a383f7578"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "7c205b73f86c6c87ba53937713a68375d53efe6e94a877f1d39c7acf18920969"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FBSDKCoreKit.xcframework.zip",
            checksum: "94babe5c4f9972d9cfd27d43a5203505638a177a6b8cb72005958c33ab1e6709"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FBSDKLoginKit.xcframework.zip",
            checksum: "43c913a5d3a5e57674fa18b4bfa451c07bb3956d5058dd484b175c89cf846210"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FBSDKShareKit.xcframework.zip",
            checksum: "d36a506524ad4c3ef6f4c68b9f3e7b947035c0ee88b3c9097bc72fad03868ed5"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FirebaseAnalytics.xcframework.zip",
            checksum: "9d03df8902fde765047b805f10a492c43be4f0b337c0d424223328722a60b891"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FirebaseCore.xcframework.zip",
            checksum: "7ad626c938a80fbd5ca2b56346d798801a09c5dca208b262d6e4fc9edfaa1d87"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FirebaseCoreInternal.xcframework.zip",
            checksum: "a051d2882daa8c665200a0b584d5a0c3e50a991a66473752c3df15aa9579beff"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FirebaseInstallations.xcframework.zip",
            checksum: "5dabc3b59392d70f93efb315c2fe89287e9a002690ef9a6e7fc56703e447546c"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FirebaseMessaging.xcframework.zip",
            checksum: "9da9d0c84235d9faed6af340549cddb49f914dbef4b138a668c0841adacdd88c"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/FMDB.xcframework.zip",
            checksum: "1007f0754285ab8c14c4d40ea3040091948036b159355963965bfba1165e9fb7"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "7559b2cea94ec4d0492e1f88f2ea6b2687c410e7f243cbbe4ec2997f3c4bdf11"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/GoogleAppMeasurement.xcframework.zip",
            checksum: "213a80b52a69d831970e0919c5f7598d8252da242fcb7578c108ed4acfd5d1b5"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "38eca7bfa41ea399766c43e5f8e8e546c72eee73fed56fbe51b0c3107c8cd02c"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/GoogleDataTransport.xcframework.zip",
            checksum: "5dffa508af67b6e5c91fbe9ce6713ebdb22029655832de50a9e3ff70ed55b0d0"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/GoogleSignIn.xcframework.zip",
            checksum: "96ec3bedc76f2a4f82fb11cf38edf9dbdc35ee4492632379aee2ec3afccb270e"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/GoogleUtilities.xcframework.zip",
            checksum: "8ecd7482dc3a3ba901c80342698f038128fdd7929f96582475897e956d833552"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/GTMAppAuth.xcframework.zip",
            checksum: "975e8f1f13bfce583142a9682ffef7ae745ef5d073f07d4914722341bd3e1a7c"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/GTMSessionFetcher.xcframework.zip",
            checksum: "14df3f6baec05656c8cc55be73fcdc1c976fe22ea5a05e0a12caf40f04811631"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/KakaoCommon.xcframework.zip",
            checksum: "f405e84e4abde2f75e9ef5f32b15be420fded90fef3018672c22910c30e9a12b"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/KakaoLink.xcframework.zip",
            checksum: "be1bc84dea00ad20701d8b6b982099cccde34fa4e3399949efb3b7b695e67de4"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/KakaoMessageTemplate.xcframework.zip",
            checksum: "e44b59cf065b165bc98dd36879aa0355e7e14e69a4120e2480a623d1f0691c00"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/KakaoOpenSDK.xcframework.zip",
            checksum: "77a5c0e513df8bae1ee65f5f616776aeb11bd4ff697fa26db173f30bce75e564"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/Masonry.xcframework.zip",
            checksum: "38db78accfc7ed0b5ba210a9f961aeb27ba74b0f500a28b64572f7cb6dd1d385"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/nanopb.xcframework.zip",
            checksum: "ac8b66742d898d9aa1d511ad1bc1cd1ebaa76f1622f3cbac494e13771bec9580"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/NaverThirdPartyLogin.xcframework.zip",
            checksum: "7e5beb815da1288e5a7cf38097f77be18e73ecee18f9ee1caf163b585e74113c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/onesdk_ios_ubee.xcframework.zip",
            checksum: "60d14539d9f9bef0963db75cecf65be8ca3b596eaf32fab3ae9c27b0973121c4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "ed08a7de1cbda9f86c2de7d613e68318c7c0a28b44d5297f569792a08f499506"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "287a4d1e51f2fac653eb9cd1077026df53d39c0f4995baccaac76c4cfd8b2307"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/OnesdkBaitianFramework.xcframework.zip",
            checksum: "a50dc098acbe35f1745f0c8113828d5687b6d719f92ac7aa428f266825c53a1e"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "0f58ff043ba028482e2a9eab4f8a5e64a49a18783e001d10ec4a69cf13107140"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "cf840a0624b358d98ac8db68353747ca7057539d77b76624c3ee15e78eea52c8"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/OnesdkSeacommon.xcframework.zip",
            checksum: "66f4751519119e63961718947e412655269c242fc7c7a1d3675eb0f4ba7d2c0c"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/OtherPartySDKFramework.xcframework.zip",
            checksum: "56eae9db1ea0a28865df17a968dd8e4c3c9500725f1b2f5b1ad390433ad7ea65"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/Promises.xcframework.zip",
            checksum: "8e66e9bb6d6d1167db687f6edbabbf81065a97a18759f7020f085e9252228b5a"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/RecaptchaInterop.xcframework.zip",
            checksum: "3801cb40a5ddc0f58cfcbdef8af46be38c2802325dcbc60571620ee3523b20e8"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1504370/UnityUbeejoyManager.xcframework.zip",
            checksum: "c41622ab8abbc9805547fa01321405e1cd2c66591d520129ee05f2a564a20498"
        )
    ]
)
