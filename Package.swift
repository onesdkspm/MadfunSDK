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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/AppAuth.xcframework.zip",
            checksum: "f9626388dd1dcdfce745cab367201eacad61ff4111443ba7d0c025d3ef6fe78c"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/AppCheckCore.xcframework.zip",
            checksum: "5312c1f8b24f78302517cc93965400880f8b2f9319a5e9936b66e1036cbe3581"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/AppsFlyerLib.xcframework.zip",
            checksum: "36f205937099a32aff45e0ccc59a4a533a815295117335bd12623a5b2eb6b2a9"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FBAEMKit.xcframework.zip",
            checksum: "9df23c8b56217c14b86e8d2b447fe33ce534c5fbeb722bebd17358f2ffb3f48a"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FBLPromises.xcframework.zip",
            checksum: "5e543e9693795791c522b5715837d3f42406ef42dc2decc1f564288811fa04ae"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "dee7d6dbea02d2e67fd158d6474f5617e1b8cb1ad1aea795ccc6ef441591c204"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FBSDKCoreKit.xcframework.zip",
            checksum: "04514eb6560d61c36bb768dc2f6fb67fe86f6b741e26d2baa20bee8750dcd811"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FBSDKLoginKit.xcframework.zip",
            checksum: "3e8a2567beddc2945375c3126cb68a10f336867043c164f5f917076162615ae5"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FBSDKShareKit.xcframework.zip",
            checksum: "60b873ab1df812861376a22802c37acb3bca5fb281f08f68da10625f5efdfd42"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FirebaseAnalytics.xcframework.zip",
            checksum: "a552650faa1be69855b23977daf2f8806f1eba70f1c42db53e0760aa349cee3a"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FirebaseCore.xcframework.zip",
            checksum: "82bce9ce1d17b130ca4ec8263129d6354707421bc11db9cfe5c5cd2f0ffdc732"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FirebaseCoreInternal.xcframework.zip",
            checksum: "d4c641162ca3e384ac01416acca4a1f7a94487b38a35fa586a11586f164de81c"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FirebaseInstallations.xcframework.zip",
            checksum: "4aa3aed254a82cc92624d94230b47a936f1d7530919ba3d6797c91abbef48105"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FirebaseMessaging.xcframework.zip",
            checksum: "7bca59938a2ba8b529dd80cc736df24cb683cce20d0b7fc15d8581bb73b032f9"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/FMDB.xcframework.zip",
            checksum: "4e2ec6134afa509c9abf6023dac106cf74036838e592313a4318ec5646dafa61"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "20571a23c3cddd6b0c15b296d8a81534a6df2b6e65ef1190a9b94762e9befb47"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/GoogleAppMeasurement.xcframework.zip",
            checksum: "9ba9e982c6ed45fd5d09fbd9534a32bdd5d77e58d488d55047fdcf25acec4c3f"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "049f2968c3b663a895ddfe5ea45fbccae08e6a59872f538cb057d27227d300bf"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/GoogleDataTransport.xcframework.zip",
            checksum: "4f52bf693f1648a11f7f481c554c3cc8edd2b8509ada7a27df943782ded11ea3"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/GoogleSignIn.xcframework.zip",
            checksum: "8099002f9458e18a2dea3749309e64b9a3c24b2cc29c8e629043c016b4755e1d"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/GoogleUtilities.xcframework.zip",
            checksum: "8cd7bfebdf1d4f0547f01003cc110eaf094d688099a4848a62f8da46b10a8a4a"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/GTMAppAuth.xcframework.zip",
            checksum: "2f27469091355f2764f8f840fa1a1670cd0f014d72301b36e63a5b9814c0c600"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/GTMSessionFetcher.xcframework.zip",
            checksum: "5482b48475361fa002b3a235523ba4f204b7e6fb706e16cb3b67d1d896a66f84"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/KakaoCommon.xcframework.zip",
            checksum: "5bab1dece853424bbdde2cd892c71764f0703fc9051427fa1e5c9e1da86a5423"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/KakaoLink.xcframework.zip",
            checksum: "a555c990c80d278a6a53f5a24c112cf4083ceb261b262880500de83f8878b308"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/KakaoMessageTemplate.xcframework.zip",
            checksum: "51b0b0580c9bf5794c8e1c803aadb30197a57305d5326c158d93852460b64e02"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/KakaoOpenSDK.xcframework.zip",
            checksum: "6992bed5e91fd5c3fd53778760e176dad3596accadb25fb55121e5a9d090336b"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/Masonry.xcframework.zip",
            checksum: "331c38563907b5d6475ec52c25dfdc5b36b4c2c45d8e957e2e3fb544f43b9441"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/nanopb.xcframework.zip",
            checksum: "9df36c5d848712bde43a0f8087172646aaad2f095097d41f77524d9256d023c3"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/NaverThirdPartyLogin.xcframework.zip",
            checksum: "3163305ee765887c390057eb956e9b7361d389525a70072944d8aa52ad6fca47"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/onesdk_ios_ubee.xcframework.zip",
            checksum: "a7bf5db2ca5d6490d3f7dbbe89f6814523e5e02874cdc3ccf81a2e4e737ea3ed"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "c845d7165a2f172e072be9960629559a469813bc9721284ece81eac72ed7e59f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "efe0e3f057823a481ea0d6fe9aadae0d31f128c2d5a16f3d4b955ddf91b0748b"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/OnesdkBaitianFramework.xcframework.zip",
            checksum: "a6a3c736207f14a327ce06cdae8572b5267d2e49de3e13890b03050b6983e6ea"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "1b8e4df3b1f6b25e8f9f7d84fb870ac52fdc0a9cfce79cc667c1ceb03e43fc8f"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "5cccd2550f74d428e63271e2b942091c49cbcbf2f5b06d915c2d09598e70dc10"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/OnesdkSeacommon.xcframework.zip",
            checksum: "8fd9c2cde7d12b146b7312d42bbe7a759ba81d03c232ddb83dca2cef1d9f7050"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/OtherPartySDKFramework.xcframework.zip",
            checksum: "6179a6e64e33004d85d29a04b6642b11755df0597e1735ec5a32c9e882aa2ab3"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/Promises.xcframework.zip",
            checksum: "bc0ea5366a15f954e16e03f11416f23e557807f1274f19ae71958eafc07a937f"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/RecaptchaInterop.xcframework.zip",
            checksum: "f3cd4a0f71781ea983047573e70de05316c54fd590532fc2a4aea2be91cafefd"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1570037/UnityUbeejoyManager.xcframework.zip",
            checksum: "3fd7477b49435458d83f9fc25cd0c83f195d344f8e75d132e00567136610871b"
        )
    ]
)
