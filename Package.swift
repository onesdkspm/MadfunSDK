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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/AppAuth.xcframework.zip",
            checksum: "ab2932e5f86cb7212a9954790be924853cefcd289436ff0db5bbffbecbf6ba3e"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/AppCheckCore.xcframework.zip",
            checksum: "73d750b0fe8ae607a3248e4640a0ed3b8d03d7c73f490f9e7f6dc429d7e4af49"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/AppsFlyerLib.xcframework.zip",
            checksum: "d38afa4e5d153b83d7efadec2692168bcd9651e177752c205c2f39cd04467648"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FBAEMKit.xcframework.zip",
            checksum: "90a2a98fe970c22bd362a7e5856ae24b35d0d98a1a294f8cca38db06f885da52"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FBLPromises.xcframework.zip",
            checksum: "0ddc44997d740671ed7869e19787251f5023d023e92b3e1eab905df956cf2c95"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "765ff8a868af4f6cb463c090dde05d5dcfedc41353be99a46b0585c027ba0d66"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FBSDKCoreKit.xcframework.zip",
            checksum: "3e399f08ea64c03c724c0d6b4716bfdfa4796dbbf83d6ae7fc8300e04f7e0e10"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FBSDKLoginKit.xcframework.zip",
            checksum: "3c32a29f7ab73a65f71dc2f6421e3d3dbfcf84afc4104ec488cb815d2fb94028"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FBSDKShareKit.xcframework.zip",
            checksum: "ce6c637b99c3ea5d4d41c0db7239437d308e5485af15ce4a45379306cf15f755"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FirebaseAnalytics.xcframework.zip",
            checksum: "860fc1335ba57a356e09f6079e35d4cd0504e7b21688969c34ee018174d43bbc"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FirebaseCore.xcframework.zip",
            checksum: "e91bd8c553a2281bf9014b1bf13e1835f5773cb8bcb07245de34f666b6d15d71"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FirebaseCoreInternal.xcframework.zip",
            checksum: "c7b92d50c7f3e9145e317bac5dbda30a19f93903aed458a5a18e55b445802936"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FirebaseInstallations.xcframework.zip",
            checksum: "0976675435cddf4647ffaf2c9053ce559a73a6a5207e62f5691d2dce815f9fa2"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FirebaseMessaging.xcframework.zip",
            checksum: "7add07373f652673c08e9216a0d2eb09c03a20faa975d841a6d012b6837a75aa"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/FMDB.xcframework.zip",
            checksum: "2e9d1310c39febadf0662565681324465f631578c80d0e0ba0aaca89926da8bb"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "9a7b62e6281920967f23756acfce8e7c8ed86c0d817b31518567422897d7389d"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/GoogleAppMeasurement.xcframework.zip",
            checksum: "fea0d7209d3344b2dd914a1318be9f19f31db86680d8d9d4311ad7931de5163e"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "0eb9f93a03c80c55562f16ab3f3da361d812446a1d66124a8070463c21b2f093"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/GoogleDataTransport.xcframework.zip",
            checksum: "ec1dd719df521f0b539e6f8dd9457f3fe3f9ac4c0046ef106f657e5b3051e210"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/GoogleSignIn.xcframework.zip",
            checksum: "de6f85810f8a64a923274c77791c01f7c190293dfad9d1d8926c21fed9c4c043"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/GoogleUtilities.xcframework.zip",
            checksum: "8e77a20fe3a5a1521c8c33b3e9728884eb6cf8a04f303ac70ca5b9e09d77f135"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/GTMAppAuth.xcframework.zip",
            checksum: "5ae8b7e38016a7a07d1333c6be2440cba191724fa71468f8eeb38ab121537127"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/GTMSessionFetcher.xcframework.zip",
            checksum: "b231dbbf097df989ee0c70689bb1c4ef4bb1799a34ffabcba47834eab52bb36f"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/KakaoCommon.xcframework.zip",
            checksum: "3dca04133dfb8818b9e5363e7238664dd6ff6fdff88236612925c3d5d09bf28f"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/KakaoLink.xcframework.zip",
            checksum: "2406d1b8cc1fb646028557d6e56d6c8fc45748327ea06674eb78200d1011a750"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/KakaoMessageTemplate.xcframework.zip",
            checksum: "d840c3b517bd1814967e437f9312c7027f41405d2e34d000d099b44f1bcc9dd7"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/KakaoOpenSDK.xcframework.zip",
            checksum: "81c959798d03746a207f62fc9b7a249fa507025cc0e68d99d085f657c2fdb867"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/Masonry.xcframework.zip",
            checksum: "086b7c28dc3cd8f952d596798f03e4a6f505973ea9496f3fef85e822b0107e4b"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/nanopb.xcframework.zip",
            checksum: "d1a6c991d9f80ccb4b39943c582e1779fe0bd46f0cd570703ad6e65ef1066fca"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/NaverThirdPartyLogin.xcframework.zip",
            checksum: "57a9c666d58c21999658d0552c5d01647f2ba2f7b064fe57eca28633bb87ca35"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/onesdk_ios_ubee.xcframework.zip",
            checksum: "26f79a69fe0f30acc835026847965df01b6891ef16c6ea824504d72db816e4b1"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "67c30a5568297beabff81a95d01b24d41109338cabf99fe2eafa6921161fda42"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "bc310ce9749f4c09ab39ceb6b7764f57c24fc0ebf11a4620985128dd22140807"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/OnesdkBaitianFramework.xcframework.zip",
            checksum: "9e592fee29290142e0704abde2afb0efb922e01b43a1e0fe47c4ced547d6fe02"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "e757c30963804bd50e180feec8006f3efcdf30e41c1c41ff9ec7bdc17efeea22"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "67326f123e2070b6bfe2bec64f51149e6666a780b73f9d32e53c604f980ee713"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/OnesdkSeacommon.xcframework.zip",
            checksum: "e91fcd0f9c40713757cbed5c9d38e7cc78ca2f8a78b9206f0fdaef8b09e79b4a"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/OtherPartySDKFramework.xcframework.zip",
            checksum: "bc23947a573ad4df993d08531ff5a7f8e401f1d1bdf635b1313ce7d267ad7e17"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/Promises.xcframework.zip",
            checksum: "15269e52c169ea5485b4bd44434fa6623da887fc4969a161560cdf9da272084b"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/RecaptchaInterop.xcframework.zip",
            checksum: "52bd429fbb0651faf6e7503a736de7986bede64014fbe7ed41492f6db9e11dd2"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541836/UnityUbeejoyManager.xcframework.zip",
            checksum: "b9af4074c63c9e1c370d2448e25505760b5daf56e367e02018ce820ca1893341"
        )
    ]
)
