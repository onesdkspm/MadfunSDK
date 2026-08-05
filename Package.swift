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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/AppAuth.xcframework.zip",
            checksum: "88901029d4788c2b8ee8241934f9c77ce17b91a6c8cc62d0991d795c66b5b645"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/AppCheckCore.xcframework.zip",
            checksum: "5e61cdbbe78156433b8d35f262c3143050e66d743b87eee87d2388c1c09f9dfe"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/AppsFlyerLib.xcframework.zip",
            checksum: "564ffeef15277bfc0c67093acfe6a8524919fd275cb865de4c771eb0fba00491"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FBAEMKit.xcframework.zip",
            checksum: "a74ac490bf2d9e289ed8132c076fee6ceb8096603e9ee97a00f963e228f7dd57"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FBLPromises.xcframework.zip",
            checksum: "67113aa80893249b5710129635a89cd61417d9276c6f60b07061943b680f1037"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "cdcd641872b2eb7a660e4da1cbc851c3debaeb57954bbc27ff721c7f5ac525f1"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FBSDKCoreKit.xcframework.zip",
            checksum: "fbd2eaf30fc3ce2084dc71322adb0e4c78279df4ff01a0d67b8bf02b766bd121"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FBSDKLoginKit.xcframework.zip",
            checksum: "34db1cb064c3fa94d8975b7eed3bab0de6e1e0ff21e5896778048e8e0163101e"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FBSDKShareKit.xcframework.zip",
            checksum: "1b79a76a5bda84078169ab2ebfce86797bfd10a1628478bb343c17aae6077db5"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FirebaseAnalytics.xcframework.zip",
            checksum: "7d09e88b20f5e838acc642e42d8f5fc7cd809ef98c43630d7a1b3cde0c835dbb"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FirebaseCore.xcframework.zip",
            checksum: "8c44743a43a72d6d9e7c7e711318622633156802fb464ea0297cae3daa40e295"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FirebaseCoreInternal.xcframework.zip",
            checksum: "72a377c60e02540cc9105f0409397c612e3de2db050f847b4edaf0488deb2b62"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FirebaseInstallations.xcframework.zip",
            checksum: "d66fc0fc3861143a264badbafda69f7d3346cffccd90a5ed99a0832be2606bcf"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FirebaseMessaging.xcframework.zip",
            checksum: "9c329c5b03ad1a2aef3e3a6ca51bfc0cfad9b45b0f325c88f422470daa5775dc"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/FMDB.xcframework.zip",
            checksum: "72efd517c20fae2f1bf8dd7ab3eb14cd6bbf2db2fc5c5c0faa7323b1f114eee8"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "75f5ecca5dd235e1563c640e8919edce6aac1be692135ca0bdc95f3035b8aaf1"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/GoogleAppMeasurement.xcframework.zip",
            checksum: "2fa457e397978ee43fa92eba15008e6fd4503146d2e4c85b9ad861b00a3d4f72"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "3174b53de6f81a58b110deb03dea802f6ce614cafc5f9bad8cbd138b073f7be7"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/GoogleDataTransport.xcframework.zip",
            checksum: "1fbe43e425474a711ecd482ee151db78fcec2294a1cb1f49352e6d25948396e4"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/GoogleSignIn.xcframework.zip",
            checksum: "5c9bd9334e0594dc86affaa33af0ca0e4a012aeb678542b0f7e000b01d2aa831"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/GoogleUtilities.xcframework.zip",
            checksum: "fb640eb59e3e6c8c55f5465c30dbb86479714e56cf7e9a46c7a66bb5e04d973f"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/GTMAppAuth.xcframework.zip",
            checksum: "3bf9926aa3633d545e0b6baf01294c9048d2ccaf8fa6e7545ae344b159d56e1b"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/GTMSessionFetcher.xcframework.zip",
            checksum: "4f3ad54af83fef61df8cf09ae324f53f1113fc0d4dca4ca372a7503da8d3339f"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/KakaoCommon.xcframework.zip",
            checksum: "bdda94574f193623d456f72acf055596d17e0dea8d980a430d27c9a8d095d392"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/KakaoLink.xcframework.zip",
            checksum: "0f5ab049d3a50fba0721ce31dcc6a63cd46cefbab4df9068264edd7b3ed2c647"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/KakaoMessageTemplate.xcframework.zip",
            checksum: "48e4f8a59d8eff6a7ffdf80dd04d74d85530b2fe16943c4ed9fbaacf8ac66498"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/KakaoOpenSDK.xcframework.zip",
            checksum: "8277cbc9b53eb27871840147464150f88c60d52b3cfec13fb950d82abd112346"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/Masonry.xcframework.zip",
            checksum: "18af49e86105ba9bc267ba29a549669a1309e327e11299864e246aed6045afe2"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/nanopb.xcframework.zip",
            checksum: "214e31dd86e96243ea519ef81da74d6bf12dc95d0995d33f883f87cf9761c4a7"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/NaverThirdPartyLogin.xcframework.zip",
            checksum: "deb4645e42f24b55dd83dfe280d77d33e4351792538095d8dfc23616788a248b"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/onesdk_ios_ubee.xcframework.zip",
            checksum: "cf9870958b27ecc0d60222734ee0547fb0ed3be0054a8badaeea5f209a1dc600"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "8a60ef37835191d794323ebc91d39c1d3971c666f37b953ff7c2c255709f52ec"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "776b627ba2b293d257523bddf7be4163b8c15634bbe0fe674cdd657e83af0d7f"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/OnesdkBaitianFramework.xcframework.zip",
            checksum: "d959109af21f50ca6ad22c4b7776ccf6a683acc62a5fc5e6791fd8a240ba7405"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "0429a3ba357b971570ff38562c668273b9d5ef32f594109742ad419572162c91"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "3a4ac97ee7989afa0b4d759c8b47f5403dfece72138bbe06967925902d4eefe0"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/OnesdkSeacommon.xcframework.zip",
            checksum: "50b133eb26e3e3d704cfd60b273e3ca14877069cb220bbb908a0a801e0a40348"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/OtherPartySDKFramework.xcframework.zip",
            checksum: "f18d465d3dc68d5c38fe4810e62a0a78dd38ac9c76ccf4f85cea250dd8bb2404"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/Promises.xcframework.zip",
            checksum: "606ac74ca64285b350112dfacdcdc9cdad076b4502ebf59c1884117c225136f6"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/RecaptchaInterop.xcframework.zip",
            checksum: "0e9c6652d571771b8ed350454d271e02a2e60d5bedfc155c7397affad341b963"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500514/UnityUbeejoyManager.xcframework.zip",
            checksum: "c4aedbb5efb59e55b9d37a520c51867f57471bd1eb890323fd1719296207d30a"
        )
    ]
)
