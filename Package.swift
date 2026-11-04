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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/AppAuth.xcframework.zip",
            checksum: "2df81580a40d612f2c2c8efcea6f4c7d683917449f47d4f1d25fcb33d5d8c77a"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/AppCheckCore.xcframework.zip",
            checksum: "a3131894fbd9cf8d073339a67b6f9142f2bea0290535582446cf67d2e1bbed1a"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/AppsFlyerLib.xcframework.zip",
            checksum: "b36a92b2f0fc8b22fd69f9930e92efca33f740f38dc56d10e6e29460753dfef7"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FBAEMKit.xcframework.zip",
            checksum: "268cba031dab1b5d4e3e44f8f1ba8937ffdd87dd5b9786d6d64a48645a490c92"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FBLPromises.xcframework.zip",
            checksum: "4f82a7cda7cdd71675cbcc6025719d13167db4f98991630ce40f93b192f3353f"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "647fca4d5bb5d9413d92f8364642ed4863b9500727dfbc577400419dd4b6a801"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FBSDKCoreKit.xcframework.zip",
            checksum: "385c09c56b4e158fc5b323def7fab03df1105f72b980187fced5949627a533fe"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FBSDKLoginKit.xcframework.zip",
            checksum: "58c3b0e7d92972d38f88fb936a0fbda1fb2e1684f72e50cd33e3c928286e5b75"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FBSDKShareKit.xcframework.zip",
            checksum: "d85dc2f294926b0876ac7d0f234c5f469bcdc2f6c778927d04f7d18466a7d271"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FirebaseAnalytics.xcframework.zip",
            checksum: "6f7abfe7bc1bb4f5476aa5536b846edce81c4e3f0d38c92d1db3a486897d99a5"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FirebaseCore.xcframework.zip",
            checksum: "fccb1daa6e1e1f291b6ee97e74c2bd8bbeed81063a5e6ed122e153bb04ed5892"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FirebaseCoreInternal.xcframework.zip",
            checksum: "f0fffa882fb4de8373ab78590ba505a7bffe2d76ce65b0805a22b89ef23c3a28"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FirebaseInstallations.xcframework.zip",
            checksum: "703f976362f57dc9a72f2e42289b3b97ef51e5654fbe48b456ccb6dec7b88acc"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FirebaseMessaging.xcframework.zip",
            checksum: "ace20cff631aa5453f2c3d0f99cd5dce3a00af97fcc404a9db121657f42a3d07"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/FMDB.xcframework.zip",
            checksum: "d3c3e38783d6b1215d5e2be02ae780fde1947d0ffe6b179bd1f6ec80824486c4"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "f92702b3952f11b98598053faf12be771458a24847ba78dbddf8adc1b1775a70"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/GoogleAppMeasurement.xcframework.zip",
            checksum: "2b63cf4a9df96e508b824089a9b3a98d2b988c2748859d87c3260a5fc7a90f4a"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "743c82eb059ab2376408ca4bbc597619a5bc039965df6e9a99359c431a4ecab6"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/GoogleDataTransport.xcframework.zip",
            checksum: "3403510634e861003a2492fb2756c3602db1b17016b21289df85abd580e2f6d3"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/GoogleSignIn.xcframework.zip",
            checksum: "1d9bb95e43a1535d41078c4f4238a8a4ffc4754c80c136fe38d492f661b9676d"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/GoogleUtilities.xcframework.zip",
            checksum: "2381f72e97bd2e2bc176c483f88f42705c0825f092560eee23b9ff48e7295606"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/GTMAppAuth.xcframework.zip",
            checksum: "8f01408c287a1a237cd6bd8d4a60edbe471a3a2008fd794d10b938fa9a06412a"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/GTMSessionFetcher.xcframework.zip",
            checksum: "94673597bbe88cba8ec9d43af796f1e83a4d7ca2accf52ebcacca93e12a60a80"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/KakaoCommon.xcframework.zip",
            checksum: "c9f8de89f8b40ae77414190248b14d99c4d54c908c440113f2585e489f2da186"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/KakaoLink.xcframework.zip",
            checksum: "db3f2efd6434fdfba4c3509983d5d5225e61c87aa125fa16638ef223d2c79a6c"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/KakaoMessageTemplate.xcframework.zip",
            checksum: "52e30f2fd13da71d03b996266f783758c923422f85d5515eab02e1224858f3fe"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/KakaoOpenSDK.xcframework.zip",
            checksum: "6d4136ddc8e71cdf691819f0f792dd188a78b5b934b116ff84b4978ca457cb87"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/Masonry.xcframework.zip",
            checksum: "30dcc8c37c4df2f268cabab9a3407e4e19866610cd8388911fa9391bdf4bbaf2"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/nanopb.xcframework.zip",
            checksum: "d02d370dda151e1df249c860eff33255205123c4fa4d06c7615273db29f1c61e"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/NaverThirdPartyLogin.xcframework.zip",
            checksum: "03ad456066c275f2c29780a81116d67e9e70e9bd4a7926f61d050026d7d760e0"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/onesdk_ios_ubee.xcframework.zip",
            checksum: "c930d2a6c35b9425bc65ee60cf3d492f9c3a68ff665de03e2ff8e08f75f40512"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "7225ba239b4983264a7699589fe132426912bb086d8ced5fa6be00eece902c57"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "a8b4667b239781e3037a5610ba91441f1372b6abf0c81f3abf6a1f5595b2bdd6"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/OnesdkBaitianFramework.xcframework.zip",
            checksum: "db36ebf7079a4652bb0a80d0a47759726f956d040e2b74f1527fe2260eea16f0"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "112d5ac8d99db0c1981810b5e007248d4bc84000a729a86309b9c859b83b8ebd"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "0d1e528f60fd42adc93dbf06c09e16e432905dfe97daa5cfca9787646f0e085f"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/OnesdkSeacommon.xcframework.zip",
            checksum: "0a637ae658f42c5e4a13ddd259472dc0dfa6bd0fb165a79c479ad105cc0feed6"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/OtherPartySDKFramework.xcframework.zip",
            checksum: "6f53156298a592702599126a193bd0fc33d11296bd37ba22df682e83ffa2844d"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/Promises.xcframework.zip",
            checksum: "62cd578b6613a213dcbdca3a3bb7433160e41dd22d9699cdc60bed4ffe872b4f"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/RecaptchaInterop.xcframework.zip",
            checksum: "452a2ada96e71d9544047c3031217eda56814d454aa81990af4f66668d0e76f6"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559617/UnityUbeejoyManager.xcframework.zip",
            checksum: "31a19e3126d624403f7395529858b20de69dc1025c65d850df84dd7acde4ee6e"
        )
    ]
)
