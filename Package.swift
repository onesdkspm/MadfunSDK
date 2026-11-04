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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/AppAuth.xcframework.zip",
            checksum: "2f490e5d78fd4d77d9ac6bf55fbf5005820a33b8e12d2f0907d026023a7a1d4e"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/AppCheckCore.xcframework.zip",
            checksum: "a65bb510b6dd2f5b46c70485a3b901924ca22c7668e98a67dfeec4acc51ca780"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/AppsFlyerLib.xcframework.zip",
            checksum: "017ac86de29666d57b7811ea4f7957fc6e41e4e2ddf4da4fe7445ebcf419d4a5"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FBAEMKit.xcframework.zip",
            checksum: "b2f37f357bb368c074a1d401b843df7df827424ed27b265ced97201ba4082d9b"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FBLPromises.xcframework.zip",
            checksum: "4007a2becbca8f07771b0357e2b5a7f90883cb3514521d0b9be54d476285c8ad"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "53dceb8ec7881235bab7381c98ad3a978911d5190c0c875eeca47dffd74bf9db"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FBSDKCoreKit.xcframework.zip",
            checksum: "39fe9f8906264a5e1c2ae13d6c5b6f55df60f76881a229e4473adfdedcb435f1"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FBSDKLoginKit.xcframework.zip",
            checksum: "ad77a006857acebda97c61ed0d5789528f28e1362b376c4560dcafe40de92201"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FBSDKShareKit.xcframework.zip",
            checksum: "f830b6b6a68d51997ccbe6cca18a7289355baa00bf40adf93228b1830c423cf2"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FirebaseAnalytics.xcframework.zip",
            checksum: "de80942aa810143216c5b3a745538a4d304af04e77123d1423f301a156d77b4f"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FirebaseCore.xcframework.zip",
            checksum: "31e1ebedb30dfb567d8b6cb1a6788e8c6e20161a11b9427749106f21cef63f7b"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FirebaseCoreInternal.xcframework.zip",
            checksum: "1829d5a52a5810c3f201739f895c18cf26f578f951c8b0af9ff2650d1d5ee04c"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FirebaseInstallations.xcframework.zip",
            checksum: "85414ae4c1b792e368a96c1e34b1adb6219992c4dc283e4b477b45eb1ab92823"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FirebaseMessaging.xcframework.zip",
            checksum: "815e94006246c5615b4576cc00c9e1beca90624dae60cd4443a4faccee1794a3"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/FMDB.xcframework.zip",
            checksum: "ec3a1a6dff32085d4257ea1841f01b1b63bc79cd32e76786fef8d383c1c23682"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "8f9eba0b003b7ac11a128fe62c694e825384b7cbf3519fb822554333a0f00ba0"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/GoogleAppMeasurement.xcframework.zip",
            checksum: "48b2f9e0048cfe7dc6dab8a7e3cb4f9fdb8096a00cf2124d1c3abe6da0a6a867"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "d4964e4779dc8dba1a5530625f5a0e734134a9e65a15e72d9a8a90be7cc5c5ed"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/GoogleDataTransport.xcframework.zip",
            checksum: "2e2c03eaa547630eaea313d7c61777a946ac85ec0163488e21526ff3544710d1"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/GoogleSignIn.xcframework.zip",
            checksum: "7b66f6b8cb066c34df16201bb9b2c5394fa4bd1236ce916808319c7e80b1710c"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/GoogleUtilities.xcframework.zip",
            checksum: "337078babdffadb59ab07be0bec803c3b5be1f00036b0a8673c0055bdd04706a"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/GTMAppAuth.xcframework.zip",
            checksum: "f2603d06c1b1862a385588b7d266d05f78053753cc51fcb04b2e7c49d1f5d7ad"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/GTMSessionFetcher.xcframework.zip",
            checksum: "96db62dc3287900b1ab232cfbe82eafa7a8b659c2b50648871827519157f0412"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/KakaoCommon.xcframework.zip",
            checksum: "44588898a1f9f01bcd138110aabeb9cbfddda01d2414dd2a15c0f368d232fc0a"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/KakaoLink.xcframework.zip",
            checksum: "6fe2969f4ec57c503489a2dbd736e645d8085d96acd289425ba6964fb82d0e85"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/KakaoMessageTemplate.xcframework.zip",
            checksum: "bc4d0cef4803ada20ca881fab6bd3cbd0c539736f75ee545a27debcd932fea86"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/KakaoOpenSDK.xcframework.zip",
            checksum: "73087eace28b59f8dc39b1017855f802354b21f430e6dadbf0138e47782d5a53"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/Masonry.xcframework.zip",
            checksum: "ec5d30a75a84447ae76c62aa6d1752975513fddcdd78074d7d9e36348079fb8a"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/nanopb.xcframework.zip",
            checksum: "d9fd0c56f38c694367ed370c2b07de9c14791f44a1391d04ec0f05c089caf3b1"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/NaverThirdPartyLogin.xcframework.zip",
            checksum: "348fb5cea48db5ea221d2ca5bdb4ba6cb5fed529cebfd7e8cd79a11d088d1778"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/onesdk_ios_ubee.xcframework.zip",
            checksum: "d171d6a5534111e49966367df98bee993d1da216b4513d63b3192e576901040a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "de35ae8b3bb8eb7f35687e614dd61dc02a214b8235e9be083ce21a98cb3cf583"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "86e36643d9e02ac0e3627ec4c0e4ec35f89522289119472c4c3fe3a462709f0c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/OnesdkBaitianFramework.xcframework.zip",
            checksum: "989f08ddd36049bb9138c7f8eae1345160e8798bf17dd96b9dfc304556fc4985"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "56f891d8de99e44e007c02d001cec72170692d6624e1c112ace9073e07c93217"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9340d9f5e8563a5eabc3d906c65851e04f7e002e1294277fabae29393c084132"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/OnesdkSeacommon.xcframework.zip",
            checksum: "95698746320c3450c85719b4a5aa9e8c305c73c109425963be373d58d462abd6"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/OtherPartySDKFramework.xcframework.zip",
            checksum: "96a362e423b03dda86abb5b112710049b0d01253a64a0cb56aa5cd822ebf482a"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/Promises.xcframework.zip",
            checksum: "5092b043e6977bb44bb549e8d436229316fc5d0a4c6199dbe7bafdd002ca42bc"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/RecaptchaInterop.xcframework.zip",
            checksum: "1e7f8f1242d34c50d140dc8f660e10f0eb0e64dfdb6250e108fb4a480b03b116"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1559653/UnityUbeejoyManager.xcframework.zip",
            checksum: "2e4b44f1ef2cbc18608500231b798c48fc08f8236d48da75dd54aa743f8bddf0"
        )
    ]
)
