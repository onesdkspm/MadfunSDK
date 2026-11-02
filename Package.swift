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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/AppAuth.xcframework.zip",
            checksum: "edaed7d2244f287199c03a4346dd65ec44bdc7b19a2494148e48ef37a92f8a28"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/AppCheckCore.xcframework.zip",
            checksum: "64b2c52433bf8e1052c3b461e6391695895fcef3d04ffbb2b1ea9127bb4313be"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/AppsFlyerLib.xcframework.zip",
            checksum: "ea41c52171c4c560be3571704001132f5e96bbbe74ed5309595144e27d4cd7c5"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FBAEMKit.xcframework.zip",
            checksum: "722298ae55e3a2e9dd19b4642a2d045a0ae635169c177b88bef25329bb2f4d6b"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FBLPromises.xcframework.zip",
            checksum: "23079261d3e335a85a893d3a6c5687845e393ead164391d8b258c44a7e1e2c4c"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "064408f7b39e43487b7c7dc9bb1d204caa686998d9359e354f15e0131751ed17"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FBSDKCoreKit.xcframework.zip",
            checksum: "22e777da997a33b0ad99db9f3a89413723aabeadf4f65ecea6214668ea13766b"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FBSDKLoginKit.xcframework.zip",
            checksum: "41af2204e99e0c7798a28398d81c7e7e72507799e0a166790ac6337948c0ffbe"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FBSDKShareKit.xcframework.zip",
            checksum: "a8f51cf4f3b79e895ed130a45e97b82efe3c0041ea9bb0e59ced2cb1b5fbcab1"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FirebaseAnalytics.xcframework.zip",
            checksum: "35610d5b040a3809bd4924d686cc205031068552f799936b1877850a232c80f2"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FirebaseCore.xcframework.zip",
            checksum: "d44760cc3197eae2a9c40fa0b07bf3494f00304bc3117cee91b628a499e1c430"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FirebaseCoreInternal.xcframework.zip",
            checksum: "e8b6f75b8ee68c7901214865666c61ec02a646f71cf11e296fc1e2974ed494e0"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FirebaseInstallations.xcframework.zip",
            checksum: "32284571929666d8f7c2509164cc782cfe51ded1cbfbe186da57de982c852e6c"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FirebaseMessaging.xcframework.zip",
            checksum: "13d6266519a0eacb73180acb76d14255a8d0853328851aaf4520d1df5db78a5c"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/FMDB.xcframework.zip",
            checksum: "a5156dd43e361bcf13ece001d14f020a068a13d5a4a339a0d8929ccb4c01124d"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "fd8f4e69a2ab9e24576ba9ba105d0aec36392af2cf89833d50cd0ea2def08f9f"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/GoogleAppMeasurement.xcframework.zip",
            checksum: "56351821b855cfe6a940e76f71ce5e9edecc9e0d6759009a8246c70cdf5756d5"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "5ce57b302582f93998d93f5c59b63227aebc3bdae0debc6449fd62c77ba644b5"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/GoogleDataTransport.xcframework.zip",
            checksum: "06893cbe7792d015152827305cb68b298cd02351d0371fe2f558ab2512e23c05"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/GoogleSignIn.xcframework.zip",
            checksum: "3028d5a79a3e93333dd75aa8d6e79b1c0d15f02e7e40abdde5c9e28638dcec06"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/GoogleUtilities.xcframework.zip",
            checksum: "174bf82518e4681563560e5537b2dca680fe28d5c5bc3d37f2128579c6df7d33"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/GTMAppAuth.xcframework.zip",
            checksum: "dd7170b0abb5d701c345e54215931f318204b8c8c8db269a4f83085d060e86cb"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/GTMSessionFetcher.xcframework.zip",
            checksum: "ac707838c22589e3c1806fd9277a76cbcbcc9dc6974856520149fba66a3d1e6f"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/KakaoCommon.xcframework.zip",
            checksum: "5cb3387261e8ad780ce30304ad6bd7ab1214e8eb29654db9824e8c412856875f"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/KakaoLink.xcframework.zip",
            checksum: "77963a1a075def45e75fbb87f8e4e36b6942d2a92a2e69eae37f22abe9b62f0b"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/KakaoMessageTemplate.xcframework.zip",
            checksum: "f79ae43cda013d668bce6d01358e159034f259cf6ea9e8e4ab979bceb82962a9"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/KakaoOpenSDK.xcframework.zip",
            checksum: "0a0eb710aadb60b0ab6c3e7da938f68e87dd1d34d5f25d22b614465a95749e90"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/Masonry.xcframework.zip",
            checksum: "c9944a79c209f228ed743562e4bc9762bdf033113ce1e2d8e1507047cc9b3da1"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/nanopb.xcframework.zip",
            checksum: "d5f4d6c743fc3021db5f8aec38043af191b7cee80731fedaba6e850d24dfbe87"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/NaverThirdPartyLogin.xcframework.zip",
            checksum: "0d162ea6da669121d8638390c355c96073d88bf2c2da1e2985e107a21180796b"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/onesdk_ios_ubee.xcframework.zip",
            checksum: "303139893c9421d3d78f5580cb6c33f4aeb1abecee1a26d38414150023b62688"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "1c1b88278c791f154f9153417faf62f3f0b3df9b44fd51115199d9ed6cbbef92"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "79cecfeb88af64495d68eef97f126e68763df72dc492567f0a942ac37145d7e1"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/OnesdkBaitianFramework.xcframework.zip",
            checksum: "5164a8c8bcd84fc18cca7b14477880b061d0710bc54f3a04b88e449ffafef508"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "2793412c6f86e7cac0bb8fccd80b4d0c9495503b7717a1d9f1b61429243349cb"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "3ef50d8ab58617432fbead2edaff34bb4c865258cdbc47b1cb89cf1792d9fc54"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/OnesdkSeacommon.xcframework.zip",
            checksum: "baff00dd981fc5d3faf106cc5778ae062a9b0c809f7ed9e76483afdbf25b5bdb"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/OtherPartySDKFramework.xcframework.zip",
            checksum: "2d8622f6be98eaf7c7b3ccb253e13a0c65bcc72f8be9c7f944ff738550c9d69e"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/Promises.xcframework.zip",
            checksum: "ff4c9ccf88ac58c3a639f96e7124bb6a1ae0caad8fe223626168aa7a625ea673"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/RecaptchaInterop.xcframework.zip",
            checksum: "4d9acd19e98d45685e450b8a6680d7041b16b19971976a519138abf7399abe65"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1558280/UnityUbeejoyManager.xcframework.zip",
            checksum: "987d1e7124bcdc2fb44ebb37aa99b69d99b2f0666d8fef3146394526f9997b97"
        )
    ]
)
