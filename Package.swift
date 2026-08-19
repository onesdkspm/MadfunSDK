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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/AppAuth.xcframework.zip",
            checksum: "c952da3fcd217dd1933bd1ef31c5427cb6f8cd7aaf3e6b32d9c3fcdda90cee0b"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/AppCheckCore.xcframework.zip",
            checksum: "273690ead2374bdd4405e9fc27643521ba821e9fcbd0b8288d49e6480435a0fc"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/AppsFlyerLib.xcframework.zip",
            checksum: "08dedf0667e68fda7bf3089f8bde100c424be27f218f21e5d484cbb00a0bdd43"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FBAEMKit.xcframework.zip",
            checksum: "8ca6f323342fef556cc87228664135187548642e464bdcd80bb472f65083b161"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FBLPromises.xcframework.zip",
            checksum: "0ea2e429c1bd7ca7180f962aa9126fe9462569fc6e870a3ea67bfc009862acf9"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "d0e70aadc017a45141a44f87de12f23d7fdc5035e1225656a478fadbc47c66bd"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FBSDKCoreKit.xcframework.zip",
            checksum: "7ed300f5288886b00b2975d9daf247c677ef2e2a4d40f3e01e8179cec051db61"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FBSDKLoginKit.xcframework.zip",
            checksum: "777fc18f1300c507dc5ea0f98004f3c65c060956db49b5db688320047bed59c2"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FBSDKShareKit.xcframework.zip",
            checksum: "07d5d1a957466c58bc6d087ae51d8d00c8db11418084df55856b8178f19c7529"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FirebaseAnalytics.xcframework.zip",
            checksum: "e0124291f592e9ccbc9b1e7e5a16a2a65562102fcaf2d584ee5cded4bb66a20d"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FirebaseCore.xcframework.zip",
            checksum: "240048861b8e9c942cdb7aed55eb5bc2a6bf41ee8b820e1e80fa3a28b90e0424"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FirebaseCoreInternal.xcframework.zip",
            checksum: "f8035b411d543b4603c94916361b4abac3311d0e214c1632b40f27fc2ec16fce"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FirebaseInstallations.xcframework.zip",
            checksum: "0cdcdb4ed77f5b311eba3551a09c8f70ed6cb1e53ff788c71f72043db1063908"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FirebaseMessaging.xcframework.zip",
            checksum: "ad394b32cc5978a1d86ab2426fa8d2cae7d0223d2799b40686fc666bdc9f5dad"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/FMDB.xcframework.zip",
            checksum: "f47cf95fcd0a63944bf520cdc1c3a9a6fdf793ab1b61fd6040450bdd57e8b5f9"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "3ce18cd86d4d7cef03a405503dd57375482c656f0161462b5f35b2f8af4f194b"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/GoogleAppMeasurement.xcframework.zip",
            checksum: "c447c7841df8f8b80918d29b58273c00fb4330b0ad4842954988d077d29085d0"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "a4924cf591111d7342f124b9ac5fbcdd3dac6f769f2e05d4e92a13c6baa321d8"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/GoogleDataTransport.xcframework.zip",
            checksum: "d4df5e7de26b567e238ae6c3ab6e48efad9a5399f66258bb0a38e0c3831bcbe6"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/GoogleSignIn.xcframework.zip",
            checksum: "eba218e6d6c5f6ed22904c48018405b046fd44a289b5caa84017319ad43bb6da"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/GoogleUtilities.xcframework.zip",
            checksum: "f0e081a9f8ea5a7e5dd8d7d195f1b1d63ab9bc2795b0db4c0bdc842964b7269c"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/GTMAppAuth.xcframework.zip",
            checksum: "76c6c8daf876f6de44ee9ea48857823e18c1f30377e191183c6f33f08fe77ecf"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/GTMSessionFetcher.xcframework.zip",
            checksum: "8454b82960f2259cb02f66f8bd24e55c4eb462d1086d12e130afd2eb111c8ecf"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/KakaoCommon.xcframework.zip",
            checksum: "1418c630b1aa00fce92b6ee61bbce0940cb2741297170cb302b9b8f5a817cd28"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/KakaoLink.xcframework.zip",
            checksum: "ac4311d2fabae2f4d4dd5a05f1f519f28760d9dbc2de171057ba9cc27dbd5e53"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/KakaoMessageTemplate.xcframework.zip",
            checksum: "65c4f45c61a0e255d2020dccdd4c594a5cc72f8a49a0b6b21fe9324731ece91f"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/KakaoOpenSDK.xcframework.zip",
            checksum: "c66f84f7e75ae95070e3f12d9f1fb4bf2af91d3f0f929be5fb67e0b761c0cfb7"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/Masonry.xcframework.zip",
            checksum: "6c2f63cf36516c1e994ad096f49ee24f1246e2a0851f79da5eeb6808278edacb"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/nanopb.xcframework.zip",
            checksum: "da035b2df3082013faa66da2c765996e590d72152aaa31adce9690013e29e5a2"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/NaverThirdPartyLogin.xcframework.zip",
            checksum: "65944d77e76ac552ef91deb766e4dd1ef27789fa7731eb6e03490e1d740a5755"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/onesdk_ios_ubee.xcframework.zip",
            checksum: "d236cec251e7e6ba4221d71d5701136221f469f944e6ec935be95779e45005c8"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "c38be49542c126603abbe9873258b74c3c0d9f985b2885e7f419abca4e3a639f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2dd212d2851eef6788bf407807ffb9b3ae6479ccc8bffcc164e244f81087864f"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/OnesdkBaitianFramework.xcframework.zip",
            checksum: "53f51062d04dd8da7cb269046f3a101d23cef99c6488acf2c9c962adc632e3fe"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "bf99eeebe59f4a0fa76349dc83a62629af6a1236df9afafdfadc3647680b4311"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "bff517ca55b0dccc47b86a8adc1f7a3c45144c6e474f3e70a64ff7292889bfdb"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/OnesdkSeacommon.xcframework.zip",
            checksum: "e7d2ccfcd0093bf4e38ca203cf02c494cfafab959859cb1f44938a57c4aca544"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/OtherPartySDKFramework.xcframework.zip",
            checksum: "3d52584ce4b0f259d08b7f9d80a80ee042034c054ca8368ea69ea8fa5d79715b"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/Promises.xcframework.zip",
            checksum: "c964daa70ef6888f862bd373ea5def48707644acb8d79a78858513bbf450dd99"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/RecaptchaInterop.xcframework.zip",
            checksum: "6112781c8fe8d6cf39f19dd2f464da6f1f931934adc19076f2d9caf8463881c0"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1510392/UnityUbeejoyManager.xcframework.zip",
            checksum: "5530b6f718ee411cc8d6443e1c0aa3ffb24db127c406d073996000d48706ac19"
        )
    ]
)
