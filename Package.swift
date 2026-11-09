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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/AppAuth.xcframework.zip",
            checksum: "a100336539eba53202357f23e34f089b3e49fa01bd706ea1ebab3cffc21298ed"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/AppCheckCore.xcframework.zip",
            checksum: "8a00c73ef498e48feb00c89d319d06eda32562b68476278c298b57469877115e"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/AppsFlyerLib.xcframework.zip",
            checksum: "b038dfbdee2e938f22504bc4a0a87649e409b93d8257881c7d64d5d87a9c7088"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FBAEMKit.xcframework.zip",
            checksum: "82fbca9292ae5c284b4cb8c2d934edfb39d1cfae0827c12713d2ef2f4599a6ce"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FBLPromises.xcframework.zip",
            checksum: "fc1dac919352c0828c9816a0ab0ef3f0071749ddaf63ab7dc330b19ec7fe7c99"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "ecc5b18a8651edbfe43da5b8c24f4cea544ba3deabc99e5b723f88eb0b405089"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FBSDKCoreKit.xcframework.zip",
            checksum: "8f660dd7df336d8df22154e20a655aa63ec19540d1da4b104d44410c6a3394ba"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FBSDKLoginKit.xcframework.zip",
            checksum: "014ea7a9e6e34331ea8a6089b4ef373879b5fa41ac473ecc01531df67a005b2d"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FBSDKShareKit.xcframework.zip",
            checksum: "d7bbee1c7c7d8caae74872d339e697f09494f6f9b16ecc94e670b70be73a51bc"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FirebaseAnalytics.xcframework.zip",
            checksum: "2d579c1af2398e0e6dcaf37933d975dcf57d2d626420aba776170760791ed0b0"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FirebaseCore.xcframework.zip",
            checksum: "8e98a8fdae3ff11cc1b15e2f17c71e413c0116f160ffea5e04f09fc03a84b543"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FirebaseCoreInternal.xcframework.zip",
            checksum: "92e6a8262d16ecb3ba56105518e8165d2a12b6367624cacb72efd24681823196"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FirebaseInstallations.xcframework.zip",
            checksum: "dd22513434d2c5b581dd8d2cb46d8cf31f5221aac62060363b4761222713dfa3"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FirebaseMessaging.xcframework.zip",
            checksum: "63f0bb12ab2df05cc0d22fb65461ce5610064f1be39058e246d79f9b11ba2255"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/FMDB.xcframework.zip",
            checksum: "bb67e37dd5c932bdcf109755818a0c3fa4b7f86a15f62acb5fddc4209c9f30c4"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "e8f76b0700870462afa181fd7afdc66ddda76e6effaef86101d9e3b3c93c3a1a"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/GoogleAppMeasurement.xcframework.zip",
            checksum: "66b2189f0ba8c4bc0847fdd734e96f3d09f39a521fb218727a7122a716b84472"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "1e2421f85044c433ed5fbc4bb657ef7311386013a0b1455de5f252817c7cd576"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/GoogleDataTransport.xcframework.zip",
            checksum: "07f1d233c20529c85792fd1cb11dae036b05d15c6fcee2b86e0549ad1b0c94fd"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/GoogleSignIn.xcframework.zip",
            checksum: "4aa0d00e6cdba2f11541dadb2c4422b2e05e51a12a3cbdc971308e9d3dbdd047"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/GoogleUtilities.xcframework.zip",
            checksum: "e5f02db6e69b7df1e40b009843f50013e5fd4fb6bbd776eac72ef23c80c9e924"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/GTMAppAuth.xcframework.zip",
            checksum: "714ebd116f38eaf0e6d5cb267336d75edf88fc15f50127e8f0ffdf355a4c1d56"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/GTMSessionFetcher.xcframework.zip",
            checksum: "523ec7ff66a64bd3c20b3fba2f9ad9c4db180e8686caa87a0f7ff878e8c71b51"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/KakaoCommon.xcframework.zip",
            checksum: "2c4e417cfc5af6b277ad23d907f2bd488a6cdd579e1b8f7d977d9eec0ae831b2"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/KakaoLink.xcframework.zip",
            checksum: "bc351b35be1548b8e08b35548ca3ad7972b7d8a9e47304766ea2f4e3d94c7a8c"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/KakaoMessageTemplate.xcframework.zip",
            checksum: "1eda7e6cbde4aabeee239c8763decb0865700d3cd74de9299d58af4f533888d0"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/KakaoOpenSDK.xcframework.zip",
            checksum: "9d51804f3b88f3343717db25f35d477d9b5e4ff89fee9cc5153c97bfc3ceb0c1"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/Masonry.xcframework.zip",
            checksum: "d0dc2784a39519f057541a5eb46c03441c9b2a442ea501204d890a6c875adf2c"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/nanopb.xcframework.zip",
            checksum: "931fb34e9dd91e605bb5eff1768d1d884200c8081380a7df9ec03ab45deac388"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/NaverThirdPartyLogin.xcframework.zip",
            checksum: "724c7402b1352630e89223a613e46bf9cf493846a5bc641937fe044807228d01"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/onesdk_ios_ubee.xcframework.zip",
            checksum: "23f11898cd32f9cd98d74ec1597aa361cbbf9e42830c9e0b5103099de5afe7a4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "c77c394a210849e51aaeac5218b75886fad280424f80873ffadad3d397435551"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "3ad9d5cc11f81750b74f504c5498ba8c3bc96f2ecf34d1c5111d11ab360f4497"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4ce0f140980c8765cd3ec42e9babc9d1deb715ddef122b2381d6a11fd18314c7"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "b1599104dfcb3fb0dee6342a29a8366753952c62273c412f8f4080ab60f038ba"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9d3322d12c1ad51bd2374e3b870f471f118e2a00a2f3c54a49038f2cf307b9cd"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/OnesdkSeacommon.xcframework.zip",
            checksum: "50fd44163e5ae3ddd5e21bf47bdad8b005c1606872acaff1aee0216b205425e8"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/OtherPartySDKFramework.xcframework.zip",
            checksum: "06aea9499794fb00d9c9bdb394c254c358c174c8ad6161becbcf113c54ac7bc4"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/Promises.xcframework.zip",
            checksum: "e2b0bcf6f5bc432bfb0075f98e478218880324a4781e8a474ddc8fe4ec47b00c"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/RecaptchaInterop.xcframework.zip",
            checksum: "87396922371fe1c0c1471840ef613788bfcb97e210f2e7a369bd83615723a4e8"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1563425/UnityUbeejoyManager.xcframework.zip",
            checksum: "824ec92c3b9e9341dedadf8ff8a3c2b97191a9b5d4833d7b3c8df2e7064835de"
        )
    ]
)
