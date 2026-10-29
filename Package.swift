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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/AppAuth.xcframework.zip",
            checksum: "a89aa5db84ac3a959aee44408ef142d503e6004497c1ffecbd075179315e1d35"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/AppCheckCore.xcframework.zip",
            checksum: "68637b39297ffd41543425bbf1aa1b10df0fd4688ae0885a1fed0979c1868a55"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/AppsFlyerLib.xcframework.zip",
            checksum: "c8895a3d438a0e8d58271f5dd81ea129ee67027f4e43ddcd40d75aa7e4877d08"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FBAEMKit.xcframework.zip",
            checksum: "98146bee9a14da50c07f7da8abb95c2e21aca6d7ae99f255aac8ea3216636d9e"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FBLPromises.xcframework.zip",
            checksum: "84b54d5a28b725cc3f685fcc17606ba32985db1c7c759dcdcd72f4d5e338ef4f"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "8fb83ce544f91508f23f10661992e8766e13ea75e6b4494f3af2a5114f514510"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FBSDKCoreKit.xcframework.zip",
            checksum: "013685fea38aa1eae88a29432d33ad0e5f5824ff32b4e609fe6db21f99f36fc2"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FBSDKLoginKit.xcframework.zip",
            checksum: "38f5eba86370ef67cf4c559484c31657620c0bee7ff23fd181f1a49ab0e952aa"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FBSDKShareKit.xcframework.zip",
            checksum: "b27b99725d23d66b513ab9ca5c6a7efc57a54e26bb34b3d24bcc23a4ace6bfe5"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FirebaseAnalytics.xcframework.zip",
            checksum: "ec2548fd93e7351077a4f40685eab3dde211cc75d1172370c36f531c816a1c51"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FirebaseCore.xcframework.zip",
            checksum: "9dfaea80992d5296fb7ccc77472eba8491822cb3a4ac0e4cde624ac6454d71dc"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FirebaseCoreInternal.xcframework.zip",
            checksum: "d3c360cb8014f6d8e70cc46680a031e56d5bf4c015436b6f6dee2713013c26ca"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FirebaseInstallations.xcframework.zip",
            checksum: "357902c004763709e6b3da7b9997fc43776432a4f4cc14c62c638f3764bb335c"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FirebaseMessaging.xcframework.zip",
            checksum: "ed7d863a1d9bb83488af2f00811efd9334e0744511a09dbe16c6e0c23111f95b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/FMDB.xcframework.zip",
            checksum: "94614e299d6e3dc20c2fa2eeb95b0b949228bc81d29ed7f23231013c5163f4fa"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "079cc77bc7af52e893cef82f692b1f380236812ef0a64e2a17777225bcf3d9d2"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/GoogleAppMeasurement.xcframework.zip",
            checksum: "270984e2b518d31f90612c0c8ea745f4e9b073a19acd75a620a8ee5a9c494da6"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "d971c7c7efb9a9855c1cb99c4e45d2e863ea22b47d92ecd067a1697c93dbbac2"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/GoogleDataTransport.xcframework.zip",
            checksum: "932c20bc4fe2b1dc428db70387003b78a6eadf95768bee02a782c8c98a2fb1bf"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/GoogleSignIn.xcframework.zip",
            checksum: "528dc9a82b838a5461df43a93cdc06c4eef0e4a67751919e6d2379bef4ef8b7a"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/GoogleUtilities.xcframework.zip",
            checksum: "3c2d5d052d4a9ac2629cc8773947f59af13071a3101abda7cbd547644d4f2220"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/GTMAppAuth.xcframework.zip",
            checksum: "7fa86614941ae874778ab50b4e03714c7ad85e68321d35ac15ceb5fb42dd1356"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/GTMSessionFetcher.xcframework.zip",
            checksum: "1b10787d7f40ae1357b4917070e2e450f6b2692844ca151b64f7331e4d990847"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/KakaoCommon.xcframework.zip",
            checksum: "353f9446a93fdb58ec6a58d0217fa55b6451a789963d284f94b1a87eaa228a11"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/KakaoLink.xcframework.zip",
            checksum: "994c46dc120930ebb8a82affa5600a650cebeeecc7d4709a0c9dba8b4c26d99f"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/KakaoMessageTemplate.xcframework.zip",
            checksum: "468263a65d3a384c63d9940111d25841c0276edadbe48b62b26b724255c5dcd3"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/KakaoOpenSDK.xcframework.zip",
            checksum: "30c1c1739dc727c3d958bcb98d80085cb0df9d39622c416e1aaf3e9067c7c62f"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/Masonry.xcframework.zip",
            checksum: "f10ca9ea37f524b4d312a17598cc4ab228ea27369c9aed7ab0d41ed19d37ecc9"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/nanopb.xcframework.zip",
            checksum: "9c1d7342029d794988deafb4505af762527c255449e7394909dbbf45a0a46788"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/NaverThirdPartyLogin.xcframework.zip",
            checksum: "4214a75dc1145512846440597afbb1565b357e581f78c1c882ebfde73f2f8922"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/onesdk_ios_ubee.xcframework.zip",
            checksum: "a90c8d39ce167c23727d657d2165638e4c2c50169394bad394627faae073e0dc"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "bcb237422971749b45420b18bb50229b8003cf67909c3b6a6e1e558c6b7fa0f6"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "d588a7c5e3d210ace83a53181545900a6ec9bae62f87b7026abaf0ffec7b2179"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/OnesdkBaitianFramework.xcframework.zip",
            checksum: "ccf460e1a8088c6a9f2f17798ba1da3b7c0060bdd96f06080dc95741c5ccc55e"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "3625b7dc27e42ddae213a04ce932739698a2f26cf09ec4d4738c5d87046d7e8f"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "37a681bef9be0702d17d4b66c9c940f698fae606648dc7f291d08fcb193f6b36"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/OnesdkSeacommon.xcframework.zip",
            checksum: "4c0d7008609db73d53be0f7d8f01e11ea2200dbf3b0b9506e9de52f2d8c15589"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/OtherPartySDKFramework.xcframework.zip",
            checksum: "6fe1b7f4d36674a25681be0c7676e4212948dad630540d5cd34192a2be09d32a"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/Promises.xcframework.zip",
            checksum: "571f6302f9e56b932abb7e00b7b31c43e9dd38b80c38a449f45e65a549863e14"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/RecaptchaInterop.xcframework.zip",
            checksum: "ea3f1d37f5fe492b8e83b73acde9a0902c85dcb94faded23a428535761c3ca2f"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1555781/UnityUbeejoyManager.xcframework.zip",
            checksum: "1d90ffe37ba4310aa23cf6c9febe82bfed7ea78d60489e3f83c6a918669055d7"
        )
    ]
)
