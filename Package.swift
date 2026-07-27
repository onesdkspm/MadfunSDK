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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/AppAuth.xcframework.zip",
            checksum: "eacabed66aa3c24cd688e657b64ae612a1e60c4fc99786d8f65609098973846a"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/AppCheckCore.xcframework.zip",
            checksum: "7b85dd5f885d789f36ce7c82f3a853add2a09bd8fbde8b01acf3f678985a4b5b"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/AppsFlyerLib.xcframework.zip",
            checksum: "e5e6177fe067ae14b4a5f8e4573fb2b681d4db5363dff8ba84cd1bd37807fd3a"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FBAEMKit.xcframework.zip",
            checksum: "086d16bdfa1b7a4639796069310c1e87022dffbd54ead193e86d8ccd86fe6c51"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FBLPromises.xcframework.zip",
            checksum: "76beabd2c54bab988df99cfad909482ec9b6b4c4ebc3d5a90bf500a899506933"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "4a526913748149b4aea16cad46506959aea44db27a5517b62229fd2a6c12c7d5"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FBSDKCoreKit.xcframework.zip",
            checksum: "35c7beef02db5857360597dd4366c3af4f8d96be137be4c2d2d49cef73bc8b2c"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FBSDKLoginKit.xcframework.zip",
            checksum: "27e69aac54b2953d0efdc2889c468ed283e31b4dbc75a8b039255f6ed3554ee3"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FBSDKShareKit.xcframework.zip",
            checksum: "68a357370996a669dfef5fc509df249bed8d2f2c8b1594bf0e03c0fe37c0a67e"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FirebaseAnalytics.xcframework.zip",
            checksum: "b8bb72e9ee9bc721f50a33073074e30933fdfba9d8c90e670df4424099bafd41"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FirebaseCore.xcframework.zip",
            checksum: "581a0937cb749933616700aeaded93af5f395852bcc6a37fce65e925e2dabce6"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FirebaseCoreInternal.xcframework.zip",
            checksum: "f433ee3b2ccc21c7fa95d920ef0eb501a970b8b34106fe53b4fff976198545ba"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FirebaseInstallations.xcframework.zip",
            checksum: "36279311ebbcbb2eb850bc37b514d469552e30c6971c18d01812b5b81222cf67"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FirebaseMessaging.xcframework.zip",
            checksum: "be5a90a27948d9776dbde28dfa2074e5f9a412a5ffe86b65ab30347389bf7341"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/FMDB.xcframework.zip",
            checksum: "4e5966bf5977575113ab93905ab9b060316f1ff70090a7a7c550758cf17ea7bc"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "c22d5b549a70aab31845a0c016de10b1f0b89272313e4e6349246fdab850c08d"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/GoogleAppMeasurement.xcframework.zip",
            checksum: "d8bfcf8424de17e4770c60bb4877d666d42213dcf70cc6f8e1f4559d461b8785"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "437646ca71f224dcbfcaf2fdbc8ebacd05f20dc285cbfbc6d5c4178dc6415dce"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/GoogleDataTransport.xcframework.zip",
            checksum: "04d184338a6a359458ea660bd3cf8c77ecf809bf8af010bc7bb57b5a8c2e3b7e"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/GoogleSignIn.xcframework.zip",
            checksum: "e47015b5d9567dc4d1819155281e25ed07918ccc8a9b39cd1f466493ccd05cb4"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/GoogleUtilities.xcframework.zip",
            checksum: "30962e30ef699831d783e61eea923d61df1992ab50bbe662cf1aac5c7403128c"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/GTMAppAuth.xcframework.zip",
            checksum: "25b6ae994acdb319f59773809dccef3a96aa2307bd1d43eab5a41b87505d9ae5"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/GTMSessionFetcher.xcframework.zip",
            checksum: "7f9c0dd40b0b2c6645757dc41603c6c21c30feed7b82ea9217b62814d5dae877"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/KakaoCommon.xcframework.zip",
            checksum: "3d4fcd74a4a42db9e4863801bd0886df7eadfabb5a0b68704d300650ed160df9"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/KakaoLink.xcframework.zip",
            checksum: "cdb4f00d3df51742d52d86686afce49afcae043e9f63826a936c684b711207b7"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/KakaoMessageTemplate.xcframework.zip",
            checksum: "756645080bf44a53f7eb73a7ed2dda308943d9de461ce980cb4a2486862e9466"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/KakaoOpenSDK.xcframework.zip",
            checksum: "302fd8e07610e09b45550cf167735704f0bfba6df22313c16d3df31f06e2e442"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/Masonry.xcframework.zip",
            checksum: "04d3ec991b0f6fb002ab566d77dafeee5d0929a47ea31f31f355f4b6ca1451a8"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/nanopb.xcframework.zip",
            checksum: "a13748fdf4739aaf7164c91203da9b275da81593d0123eee85bbfcca9309f602"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/NaverThirdPartyLogin.xcframework.zip",
            checksum: "f66d0b568688d40569984d1cca47adddfd23bed3ce30b5eb340ae9edf157fc15"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/onesdk_ios_ubee.xcframework.zip",
            checksum: "83f3dac90000ea4981a0940e8571c523e4c1de08e348954e2413b4a751c6c36e"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "742994faf22f31788d1652351bd03f20fae6ca2e3b43ad46e16c3707b0f34422"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "12789b4b1984cce8ad34051b80cf2d51bcf34589366a9387d2e12aae2af5b452"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/OnesdkBaitianFramework.xcframework.zip",
            checksum: "82d9b9932bc543ab964523b545260c3882826293774c40eaebc7b6ee5a5c1160"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "a8cad81458f8774c2f66b56722b5c3ee610e83f19b72851202fcb6f3ab4018e2"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "357c1a1da46cbc4ae80d095609aeb15d9b246b1ad9af3ad4ae3f832cbae3c0d5"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/OnesdkSeacommon.xcframework.zip",
            checksum: "f17d3deaa8ecfa7def132823613a033e722dcd5ef85f7e51fe3fc16c980adcf1"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/OtherPartySDKFramework.xcframework.zip",
            checksum: "92d3a7a448d325ae89280f26a2e30bb9269b34ffe1470270ce8449055e75946f"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/Promises.xcframework.zip",
            checksum: "43798b62d04d1b2a9abe0b9a8021ff916a1409f4dd0771ccb2637ff96640dd79"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/RecaptchaInterop.xcframework.zip",
            checksum: "d511493d017b5cd0d90b057d0f8cf254d380e9eb9158407c1adec127a85ec4ec"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1493763/UnityUbeejoyManager.xcframework.zip",
            checksum: "4d1d838d6975e3141bd8d9f490557d6364897f466dda223d5f8532ede3715885"
        )
    ]
)
