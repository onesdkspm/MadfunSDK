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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/AppAuth.xcframework.zip",
            checksum: "5dd7408185b6d8af752f12a3bc8f0d1fc42edb9bbe07ff0659f6c20e9095efad"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/AppCheckCore.xcframework.zip",
            checksum: "7e3b7aafe072e47f0afb723ee825bf444c10c91608d26f24ea82ba714522ce80"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/AppsFlyerLib.xcframework.zip",
            checksum: "60587dd58ec1366ea8492a795ab2b66b4b6fadfe49a3805662725ae17dd05a80"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FBAEMKit.xcframework.zip",
            checksum: "0e624ba89de92e88ffbb33ad3dc4aca73102fcc0fda892cb0304c2378758ee52"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FBLPromises.xcframework.zip",
            checksum: "2a9136bad726fc68ee3055c23f62ae20f6d441631a92fa187f57b9e241fde97b"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "ff0b8622b180a661ccc34ee3387b2967654f1f17605cc6d378c417252b2c498c"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FBSDKCoreKit.xcframework.zip",
            checksum: "dda3818a7e095d01f2ea8eb2ca6d849e7abd54018cc73fac4528a6ef4b32f65f"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FBSDKLoginKit.xcframework.zip",
            checksum: "84339b70dad02c2981bcb77553474978ef2aae7cd7c78970f83923295e407b75"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FBSDKShareKit.xcframework.zip",
            checksum: "9e6899b519a1fadb21db58aa3f4435bda8f92abf90ffc727cf79a3a35d28f6bc"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FirebaseAnalytics.xcframework.zip",
            checksum: "0d9505e55ab86ea9ef3de7b9e3bff743011c9a122d0f45365a9b18a75bb4f1cb"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FirebaseCore.xcframework.zip",
            checksum: "ea89d074204c4416cced4ab5b24fc83b11531375bca1a4af2ed4841ddacb4d66"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FirebaseCoreInternal.xcframework.zip",
            checksum: "6f95281b13e25322d2f5de809dacaa4636103f4c4d4d15a5849344921b5bbb4d"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FirebaseInstallations.xcframework.zip",
            checksum: "6a9f51d7de376ccb7a0b10d47a2598506cc716274e8719cf9c8a8fe52587c33e"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FirebaseMessaging.xcframework.zip",
            checksum: "2d3b8415dd7f8d43e899529bf4f1524924e6756f260033bf674c534942b78682"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/FMDB.xcframework.zip",
            checksum: "73bd95e0cd4f3de777004e6f37c5f7b011ad573761d2640717b29dee3e57f715"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "0c2008e94399a58c5c3a9d8d8f0edb33cab0ee4e7251b491954860522aa43284"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/GoogleAppMeasurement.xcframework.zip",
            checksum: "7cabed0d78c941d2e777f67c0f959235d6dfef0317fce5580f8be5cfb0ce737c"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "0d3c9b1c0dd5160e20e017788ad7404801215a7b8fcf38cda05eaa51507227cf"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/GoogleDataTransport.xcframework.zip",
            checksum: "ee798bc8bd3cbe5dd7fadfa7a52cb0529c15761f2e3d48a57e44d1224070afb7"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/GoogleSignIn.xcframework.zip",
            checksum: "c8f8770090aa158a3ce7ba727a7d7049900f98d819ce401756a56673278b2050"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/GoogleUtilities.xcframework.zip",
            checksum: "2c3daeaf4183746edd1e4f455220f26bb153b841bf03071b8af9c162f16cf6dc"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/GTMAppAuth.xcframework.zip",
            checksum: "b5458355881cf9552905ff4d9d28cbe121f9eb62aa8b481f64820376ce50925b"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/GTMSessionFetcher.xcframework.zip",
            checksum: "4712d5bd150611d658a1e0997c27c0b7c301e6b06865aaee5f0c83db58510e54"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/KakaoCommon.xcframework.zip",
            checksum: "beae42d3cd851324901b646beff50533bd73bf20d6c4d4715fc60345c771c9d0"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/KakaoLink.xcframework.zip",
            checksum: "884e52a7a18fff013cf571c0928d46376b073228db4e96a1e7681aee9e9d28d7"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/KakaoMessageTemplate.xcframework.zip",
            checksum: "e5da5a2d36370b5ec2c8d657d8d6fc69def22c8569ce4a4fd20e4cfff6326ca1"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/KakaoOpenSDK.xcframework.zip",
            checksum: "c777caffc15d65196e197e9bfd306142a3e49a9ce1cd9acbc816de23b211f9d7"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/Masonry.xcframework.zip",
            checksum: "7c98a1bfd12b2cf37bcd8f20d8d0728b96f09674761752cc31bba9150fb5d933"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/nanopb.xcframework.zip",
            checksum: "64ca07b4dd2fd337c4099822125e71e2ac28b4d8042fd8f858bb15f1914d6e3e"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/NaverThirdPartyLogin.xcframework.zip",
            checksum: "03bdd0da6b93cd51eeb859a3f323b1e6e442acdefb1fc3589fac014ce87ebef3"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/onesdk_ios_ubee.xcframework.zip",
            checksum: "a88f4fd2a8d2f5dc934c7280009bc1d7b4977eda860f352f9b95494090301164"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "e24855b9270b6b0abb2001be6605b42780c41962031746067ea14f9cabfa72b8"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "5a05d8fd33cf9c0c0251c7d1562f93bcf2cbfccb37f61328c6b31832af9b72d6"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/OnesdkBaitianFramework.xcframework.zip",
            checksum: "069b1ff0ae1cf2e71785f05ae3f5851656cdd8c76efd49c633269560b4792b61"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "95609bfbe45f4f80792ee48e85ff66c9164a7e61fb60df9ad29d580cff2dec21"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "8f27d2ee1d1abfaf6b5d71410a78d2705807f8ae0e7994b61c7ad46f6fa3e3f0"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/OnesdkSeacommon.xcframework.zip",
            checksum: "5254839c27aecc4bf326508e3720bb36524a075d22f624d81aeb23be20f51456"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/OtherPartySDKFramework.xcframework.zip",
            checksum: "7bf2b55d5a7e9be5fc119592f9c9346540c7eb5ee5c8bff76fbea5eb8f808311"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/Promises.xcframework.zip",
            checksum: "fb9864d590f35fc8a2f91d4d8db87c7bb853a24d6e18b3915cec311f63daf81c"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/RecaptchaInterop.xcframework.zip",
            checksum: "a7dd0eedc279db7e346657fe71b5bb20c7b7613d04c3081b0781d72de0683db7"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3/UnityUbeejoyManager.xcframework.zip",
            checksum: "8878469e9ca43308dc5e8e8ab30dbce48c06a93d7c2c953ddefbeaa7edb31b80"
        )
    ]
)
