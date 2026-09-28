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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/AppAuth.xcframework.zip",
            checksum: "8f955781de3813d317d215ad271af0e6642d326c385d23e59b77a2225da1d125"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/AppCheckCore.xcframework.zip",
            checksum: "75927179cb0433635ec073b62f428b0bf6d3fad74b53b6d6aeaadb93052f24fa"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/AppsFlyerLib.xcframework.zip",
            checksum: "198f4733b3f7a0ca833446fd4c46433cb52ea62e7438a81e670d675b5a28eb8a"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FBAEMKit.xcframework.zip",
            checksum: "00cb93cbcc52b8e3047d644cb53850d213230783b20f70d8b775a4dd24904e6d"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FBLPromises.xcframework.zip",
            checksum: "d02a570ed315730d1075c94f834c743d551cd99d001103a199505daf4668ba69"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "c53c6a4b383fe7b45ea192ac68c4e3d08ba2c31011f54a7c8d8ac67257f9aeea"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FBSDKCoreKit.xcframework.zip",
            checksum: "8cdbd2e7ae426a1ca65020e73e364679a7bd8dd663b143556bac7ba56241defe"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FBSDKLoginKit.xcframework.zip",
            checksum: "2bd4b61864d9d45f2b83ad95a60af720c34b64a24770cbe8368928b44b9819ba"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FBSDKShareKit.xcframework.zip",
            checksum: "a03a49def64821c882543b5243e7c6947acf5886f2260efd9f3fa5e196d681b7"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FirebaseAnalytics.xcframework.zip",
            checksum: "5493fe9294245ae37bc6a87738dcb635f8b79a01e5df1ee2327d8267f063a7ca"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FirebaseCore.xcframework.zip",
            checksum: "251e0731efbfd0858f937ab7c83317f304985a3ae98a65c8d8180d199d3c0fa8"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FirebaseCoreInternal.xcframework.zip",
            checksum: "327f9a4f2b35bdf5698834c8f97ad50ad192549b82e170381d36e75f78ae40ae"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FirebaseInstallations.xcframework.zip",
            checksum: "701e4fbe542fb93f87ae76a13d108c0c53ccb76a9c4b7a79962d6bfffb56370c"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FirebaseMessaging.xcframework.zip",
            checksum: "547eecb458856afba4ed1f849b8829a3cd9730e62a85e73e6b1e2e2d73a6c55e"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/FMDB.xcframework.zip",
            checksum: "1cd5b26c97ad53ed6297ec781398cda05b0d69203fabb3160a8a8a05f8536682"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "0cff28324c781c172c4f726793808fafcd93ebd3af90111aae484778b4232e61"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/GoogleAppMeasurement.xcframework.zip",
            checksum: "cb546be8ac93c70562b9e9c14ad3b7fd63fbb10a32fed4be6e80bb966039274b"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "78281dc2b99f5d7312134ad827b2f444a1b7380c0ae3c48dc255e364b83394ba"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/GoogleDataTransport.xcframework.zip",
            checksum: "75be2f3ca3f53b6180e6cc162ff263bebf90698111aebdfba098356b75ea7b54"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/GoogleSignIn.xcframework.zip",
            checksum: "a3fb67e2197cdca3adb1a3e95cc2df2134e2574e8a89bc800bee4a3d2f05d9af"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/GoogleUtilities.xcframework.zip",
            checksum: "9af02b7c2adfe3af69f892c17d22af7dd7356b8c823048c5d9d53967520bd738"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/GTMAppAuth.xcframework.zip",
            checksum: "87cacb45b3cecfdc8f075def60d79ae1a611b0526ffa0e2222cad0ab68caa69e"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/GTMSessionFetcher.xcframework.zip",
            checksum: "d55d2638a7e994968feb17ad4d5e92c9827f021722ff18b1947871887c497606"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/KakaoCommon.xcframework.zip",
            checksum: "bb576d0b584d2069673fcc08d7746bd6c25a80fc0687566c5147f6a67e54d74c"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/KakaoLink.xcframework.zip",
            checksum: "ba0b36fb1969ba2b8fca44c17b5a0e7e3fa4b1d69313a1ab06474629e4a6d2fd"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/KakaoMessageTemplate.xcframework.zip",
            checksum: "57499b22fda85b40ab8551e67d44365f808f35b4c687e3a228cc144eb8955473"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/KakaoOpenSDK.xcframework.zip",
            checksum: "320a3cd0c9ee7cb00fd38c75f95ff346e2e8889d729df29c866cb0fbe695228a"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/Masonry.xcframework.zip",
            checksum: "a0ddb27f32b3ec4f0ac0a5f8f1c0f25299f1ad3052c8075f9e1c06c221f7e2d1"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/nanopb.xcframework.zip",
            checksum: "08eddf8a3e4bc75919a49f61a290f8b09c36c5e6fcc9b2613e1fd4f63225b69a"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/NaverThirdPartyLogin.xcframework.zip",
            checksum: "c646b71b80d34588bf5f843444c713439f13a64509f5e28dbd41a11789bfff56"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/onesdk_ios_ubee.xcframework.zip",
            checksum: "39a090470d04ee2d0d12a44a7b3398116c86046027a8e7e8cd648609bbd9dd65"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "4a82f181a5e11ada551a934f84f28ec0525a138b36c37f3f8cbd45615c9b14d6"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "bb5eb404bca058cea5d38733230c3a550f0372d7af6061b12692aee5d21157be"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/OnesdkBaitianFramework.xcframework.zip",
            checksum: "89f8518f54f32dca91ed67766b825ff61b7f9c5ad6bb2c413f2d8c3798f067a4"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "50305d242c1e2b7bbb9fbab47f091362739f7464b38de19ad0f6a6361a69f5ee"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9ebcdaf134da525e164431f14aefc1e32a65ea59d832cd98b32a18fa79008867"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/OnesdkSeacommon.xcframework.zip",
            checksum: "f16d64c0ce143de2636a46adb1e3763af83d441052bd81c0f769a2089e530eb8"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/OtherPartySDKFramework.xcframework.zip",
            checksum: "99f8b56ffa2a295e5b36fe0bf998b641d0bf108290bda9d13d3a9398ad6151cf"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/Promises.xcframework.zip",
            checksum: "f82b2bfd3a3de8158211211936fad52a15b039cebb9c6cd589bf63478dc5f5a1"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/RecaptchaInterop.xcframework.zip",
            checksum: "d4b4a7051d548c2fd55d74f24529f3af3f06d2e9be8d2dd3f2d0b5015060f333"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1537536/UnityUbeejoyManager.xcframework.zip",
            checksum: "7aeb546f948214fc040169ef8043a15f113ce75b1a5d388314dab17cfd3ae0db"
        )
    ]
)
