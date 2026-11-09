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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/AppAuth.xcframework.zip",
            checksum: "4156b29d1fe02467ff6f953786b8e0d47ad34e89a7da7233267f1609afd6422d"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/AppCheckCore.xcframework.zip",
            checksum: "94ba150ea9c62ec5e8d743ebd76550f1514be33067694a5686725ade84554f2d"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/AppsFlyerLib.xcframework.zip",
            checksum: "8cd31b5bc4f2d2b9ae4b3ca9d0ba9f376d6527969fe3153dcf88cd6b0d556250"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FBAEMKit.xcframework.zip",
            checksum: "7d10ed6c67f795a0e07792f47188dda797f7cf7ce7cc68834043199182813d5c"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FBLPromises.xcframework.zip",
            checksum: "5abb6ecca763b0a6a298c28345cdd6b393511b40e21b9f7602f2d744bfa638d0"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "a472cd1baa759ef9e851cbbadf26fd7590fec73b0a4787cce2d3be4f0afaff4f"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FBSDKCoreKit.xcframework.zip",
            checksum: "fea3244bab6f674507c30d08a5d3ca1081697bb68300411a3a019b18b9ffc70b"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FBSDKLoginKit.xcframework.zip",
            checksum: "c1ddaee5dcf6c0052ac3fb940d05c2b6a03a8215b964aaf632ccb284b012aae7"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FBSDKShareKit.xcframework.zip",
            checksum: "1b781592a6aee699a1b9d9515bac39dc2d477e5c949a7c5f42ee718d71ae169c"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FirebaseAnalytics.xcframework.zip",
            checksum: "0e9c9a636d99ad7fc53c31d882fbe451da20e06de40a4723efb1eb2aa0438b55"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FirebaseCore.xcframework.zip",
            checksum: "aa08a6194b650d7177f16d04bb33d3da86cd30ad7faf65f6bd0f1f4306fae844"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FirebaseCoreInternal.xcframework.zip",
            checksum: "f4934adadd726d8b2cb7722a9fade79a8241801dabb7231df3c9421b2921b181"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FirebaseInstallations.xcframework.zip",
            checksum: "1562845b3e9e3c17d51fcc368e6c185a34e0a5d53366cbc3aef72e2797b51158"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FirebaseMessaging.xcframework.zip",
            checksum: "a0ce352e09b350cb3811e0781d6f2ae8ff2918164dd156baa115eaf4873427d9"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/FMDB.xcframework.zip",
            checksum: "f010ca783db8c2be264b16358acc0097e499bfa0a90cd1f6861de33c0989d82c"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "375f0a5e50022e5dd6a124f362b6569848012f8701f981f59f69e4bc72683739"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/GoogleAppMeasurement.xcframework.zip",
            checksum: "b2ed4757551a7b42106075a3223469d7b98d388d38c73c2bf8a7da285cd30491"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "dd6d103ad614ee7cc2d39e883acc2ea51d3862c40548e92fdf42ccc9cdfe9998"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/GoogleDataTransport.xcframework.zip",
            checksum: "9f92db82c9f1a070acfd71b75fb9afef44cb4a6116faf7fc92f9deb96f4e84be"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/GoogleSignIn.xcframework.zip",
            checksum: "1faffe174d9806a3b864790b8d5cbc3bab5a3e4ba76ecbed64c3aa8d5a01c8a4"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/GoogleUtilities.xcframework.zip",
            checksum: "ccde638919ad36e5e343a842091f4bf97e385143965f36c21db3fb1daed98eb3"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/GTMAppAuth.xcframework.zip",
            checksum: "2ca743c2ef0231362ddca5ddffee5cf21678dcae1babdfd6b21e33b18e840035"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/GTMSessionFetcher.xcframework.zip",
            checksum: "70b3797546d4a2aa67df56eba8009cbfbc8a2d38150c62b2544a8d0fa3e33c08"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/KakaoCommon.xcframework.zip",
            checksum: "9dd318bf3a9ac5b382f99a75dffe6268e67c9a931940e1c1d8fd526e042fd47d"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/KakaoLink.xcframework.zip",
            checksum: "b054f863a46d5f00ce999eb3b3dc74da87bf09d12f8e4afa6a7c1a52f393234a"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/KakaoMessageTemplate.xcframework.zip",
            checksum: "4a25c574ae1171020e88882df2abc1cba83801ed96775427940f123a513301ec"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/KakaoOpenSDK.xcframework.zip",
            checksum: "05229794ffa994ca6ca4674afdb51a2059a6b95b4f8f83ff7d28327fe780342c"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/Masonry.xcframework.zip",
            checksum: "bc4348cb7de13828b3e410555697abf3384b9e1a136d6685662b4ece19f63c89"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/nanopb.xcframework.zip",
            checksum: "6b957d5d19a9fc3fbc07936e73c611a877ba104045034db36c1e0f9994a6aa73"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/NaverThirdPartyLogin.xcframework.zip",
            checksum: "dc5c7c51f8946946edf38df84c403078705c4c986f69de6916530841707dd742"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/onesdk_ios_ubee.xcframework.zip",
            checksum: "03906a08b9cb7bdce5ab577985fdc94a8aeb0af11e4c86b6af496cb627e0c9b2"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "ab1f93d574de6dd86a5c13cb8b45b9966e007ace21ff6f216d15f1a7d85d9fbc"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2e9f945bd5fc82abf9e35f1883a8eae629b433275742d74609b8d19c616c77cd"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4218a1f2ec60328c840ff5ccff28439a58dc340622b202bb04dec9d793aacf7a"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "b86045e671dfd0b47d2f1fd147072b7de2ba452ebbb40380aa8cf3b2aeedaa8c"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "15ccee7e387af0f1d9d6d92fb1bd463235230919ff902a6a4649a168254f18ad"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/OnesdkSeacommon.xcframework.zip",
            checksum: "cca4215afb1ea3a2631b5c332e8b503ccbb3aafc67ab2b9808e1433c6c9e7737"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/OtherPartySDKFramework.xcframework.zip",
            checksum: "7c32f39aea7ba1c3914174e13da677ad5110d5f63227ab6f2077b384e4555a7c"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/Promises.xcframework.zip",
            checksum: "c5de0aa2acfa83a96179a105c700cf936722a998a9314062e16b0470554df7c7"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/RecaptchaInterop.xcframework.zip",
            checksum: "48fd7e344eed758cb384e306b5cc52a5de3fd7bf2cad76ec7514735f97745653"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562866/UnityUbeejoyManager.xcframework.zip",
            checksum: "89b26121bc8c4ec3365e4de828967e43831b10e3d03c1401c52a905be5311085"
        )
    ]
)
