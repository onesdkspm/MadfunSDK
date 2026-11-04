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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/AppAuth.xcframework.zip",
            checksum: "b09430124907c6805733d6aa55a1c71aaa9ba9eed9c4bdc439d898e9fd6f1060"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/AppCheckCore.xcframework.zip",
            checksum: "955b60c06bd9113ca9e5a27504be7dd5681456113a184f041a49e3b1f0e78822"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/AppsFlyerLib.xcframework.zip",
            checksum: "936a14021b8a7c9cd603b0f17accdc54bf9f43b0f893a8fc569df4741be28244"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FBAEMKit.xcframework.zip",
            checksum: "76a021ad7d83a7e8da56f98913dd27b119c0d2f3a971e9d4cac966a61fd5d6fe"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FBLPromises.xcframework.zip",
            checksum: "43415ec29466f696d344593b901ff423144f518bc8188a902ebe5dd2126a9ae6"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "901f848f6d03207174edb07bdf86ba8918a84440469881a115c64250b37c7c0d"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FBSDKCoreKit.xcframework.zip",
            checksum: "ff507d73d65e58ca1d8f7d4fbfe3400b05fbb738cc476546916bc0d5df9541b0"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FBSDKLoginKit.xcframework.zip",
            checksum: "1b0c381a05e2ec63896475d7cfa285f09bc4fc79e692d9be0a6561c607dddd1e"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FBSDKShareKit.xcframework.zip",
            checksum: "de88e100bb7b61039beaf5eb6e47faa98571dd9daaf824cd499180430f4dbc0f"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FirebaseAnalytics.xcframework.zip",
            checksum: "b54e7966b1f416cb143ba94917ad8f29a1a8131caec9998620bec54972f5faa8"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FirebaseCore.xcframework.zip",
            checksum: "f7a2fcea7b78489b0c3b8a3f06e83bb4bf9c6ce7a3ba76d96ddd50c6a45f0289"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FirebaseCoreInternal.xcframework.zip",
            checksum: "42828d851bb0555bfab673bfb17da3a47cb2e0e579668e11880c850ac7739a27"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FirebaseInstallations.xcframework.zip",
            checksum: "3b641e6fa53c0a108043cdc44b5f23b9286236490e1009d9de8bb484eaddaeb5"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FirebaseMessaging.xcframework.zip",
            checksum: "25ac19badc9926f2773b34fe71dd2458839f95abcd53fcc33d746e7179f32429"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/FMDB.xcframework.zip",
            checksum: "874b0b23b9c21ab596162b516dd69b105274859b257e96c5d89c846702c530b5"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "186cbfd4158de13f3deac001996156fee2a70646332b489230de0a3fd4d5fca4"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/GoogleAppMeasurement.xcframework.zip",
            checksum: "2c98eec175a553275f0bdf07388b514e746d16b94214bc351e34e11e5a96b357"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "3b9f2f889ae42b384952dcc23319df1a1f63e657e5052fde68af43f708589faa"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/GoogleDataTransport.xcframework.zip",
            checksum: "2bc1726fb5971b3b7790758e8f814baf765a506889ff831d5af65339f35b72ac"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/GoogleSignIn.xcframework.zip",
            checksum: "07e5f2833a596a3485abece0804573b78cc05dc4359fbed566f593ae31baecaf"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/GoogleUtilities.xcframework.zip",
            checksum: "922bcf3e7128b0ea2eabd2344d5187eaac101b2fb0cc5fd04d4528680c5a0fe6"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/GTMAppAuth.xcframework.zip",
            checksum: "36404711fad37a4d6c7afa126e3d6e0c66f85e31452d6e1735dc57af58ab242a"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/GTMSessionFetcher.xcframework.zip",
            checksum: "1a6e8bd0fb5453de00e1d1a918331fe12c2b890c07ed48d3cde4f94e5f725667"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/KakaoCommon.xcframework.zip",
            checksum: "f1c607166b9daf4fa7aa093a0ab17f1b534208835d91038863f64fb7e0ad385c"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/KakaoLink.xcframework.zip",
            checksum: "8549f4032f34e050f2feb16de468d921f7543cf0daa120dfbfe308d5df194af5"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/KakaoMessageTemplate.xcframework.zip",
            checksum: "614618f2c55297c179e7cb056aea65d0add6182dc9740a10e835be6a125340f0"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/KakaoOpenSDK.xcframework.zip",
            checksum: "88658c4bf592b7022a3129e5459c002e7a56e98046a01cca57f4a8b19a2f148f"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/Masonry.xcframework.zip",
            checksum: "c1942a1685f60b581af4424d543154a85d5546116ea970216c247e1eb2fe1b00"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/nanopb.xcframework.zip",
            checksum: "008e4d839a7934cb833b512910706d44662857da7cd6e7c03a36eabf27ba553c"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/NaverThirdPartyLogin.xcframework.zip",
            checksum: "e17e7e8e9e284ab2b425756dd05fff6bf7f17857181cd7725e813b83d0722b75"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/onesdk_ios_ubee.xcframework.zip",
            checksum: "c734dcecce1fb746000c29b12bb1272bbe6d4814541544b65413c17823cf98bd"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "e571029882cd32e53a6fe18bb17289b91731f1ecf20d1222cb69f8a43e7ec6e2"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "d54d561fa9f94c5248ed11cfe95ca46ea732acdbaceda2bb04a3fe09a79a9b2e"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/OnesdkBaitianFramework.xcframework.zip",
            checksum: "9dfca701d4fc1a2cb5a74dda3317b75597199e3b49f0eb6582f9ad3ee07781f1"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "9897c1b640b3bd0866142714a30043204f8d16183438e4ddbfe93f3ce32c02fc"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "5fef9f8f5d41574742045fb5be385c128b4f436a2843d8e26232c57bef452bae"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/OnesdkSeacommon.xcframework.zip",
            checksum: "3187e81caa95f760c149fedf945bb9dafea4d1291a4f7b7a8fd78b5807dbbee5"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/OtherPartySDKFramework.xcframework.zip",
            checksum: "f8a8092f2dc38445618922796d2de0021627e25535b855cfb3a7eee2bfa7a68c"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/Promises.xcframework.zip",
            checksum: "f903c9ce00e8ac04f92cabbb113d2bbdd06236280ee248b61ab1cebbc8d4a8fd"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/RecaptchaInterop.xcframework.zip",
            checksum: "35346992671dd6df5f89a532d39c87befd2bd7be2e37a863be2b04ce95716643"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559826/UnityUbeejoyManager.xcframework.zip",
            checksum: "410e6d5f7fe0dc85db122f10c9341ece9eac2f055e1f099b47607f05916de3fb"
        )
    ]
)
