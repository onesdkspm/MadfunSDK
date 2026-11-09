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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/AppAuth.xcframework.zip",
            checksum: "f6f27c6ec3f62520e407e4f75fa488a3fbb9d13b5a4ecc058a70676c26efb7e5"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/AppCheckCore.xcframework.zip",
            checksum: "c5154b2aee4b9b77e110e8a473e3b48df69e6407500163ae263d5f6b044c4ce7"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/AppsFlyerLib.xcframework.zip",
            checksum: "30563479dd6f0a42f35d67564df528e8bdfa6bef70d24d612f4337b332f06cac"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FBAEMKit.xcframework.zip",
            checksum: "6391ec077960e70ffe9358a39f6b5fb832f2dfeb201c43360ff0d3d3931151b3"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FBLPromises.xcframework.zip",
            checksum: "39d7ef8d5186862afceda50480820bbfd0679c469a8abe9bf48a29aadffafd04"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "45fc5202c18dc29cefdcefe3557674caf6034f73c407794da40f340da80eb6ff"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FBSDKCoreKit.xcframework.zip",
            checksum: "7cc85038b7e3873110e25c41fbf3d0f5dfa01e33cedb982d6eef8d16c9a80abd"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FBSDKLoginKit.xcframework.zip",
            checksum: "662265f1f1a8e847e177d72e997395810caef29ec13bb0008a4b13b03e6bcf73"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FBSDKShareKit.xcframework.zip",
            checksum: "e5b8d773634de106e04034ff755ce8b83c14a27a8163f09a17bfd42c4ba73133"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FirebaseAnalytics.xcframework.zip",
            checksum: "74f5d516fa42e0238b86e187200a199eaafd6af4b7ca690145c35340cd180714"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FirebaseCore.xcframework.zip",
            checksum: "ce5772366b2bb17a03d15ed7fea5cc66c676ab11e79dbfcf8d340c7aa202fbd8"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FirebaseCoreInternal.xcframework.zip",
            checksum: "e64ffd555897ac92875f8112a43345cd8e6b9b26f35a8a01f95c4059c559ab25"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FirebaseInstallations.xcframework.zip",
            checksum: "62921aa5971798af039a1da3cf725db15bd86292a7bf7f1e3a9321be53429761"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FirebaseMessaging.xcframework.zip",
            checksum: "6a034b701a47f57b8c4bd56d179526ccaff00490562147be70b750f77d845521"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/FMDB.xcframework.zip",
            checksum: "f7ffde5b6d025a31508411df627deaf257c6d5be4f5f59c08abf0766f9838fe9"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "b9f60d338ae77717bceaed2d882d21a35f280754dc204690cb9f0ce2c3cc98d0"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/GoogleAppMeasurement.xcframework.zip",
            checksum: "cf71e8f0e85efa64cc9b7021eb4fe4461d4df0276fabb01e62f3fcd23eaa1786"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "255bcb80e60cd99bb8b3a346cce6ea1c2e5113a88ba2d164ac4e029dc1db7eab"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/GoogleDataTransport.xcframework.zip",
            checksum: "dea9986ada336645eb315a000783798baaaac06b9f5bae7d0ce514dadc0ae10e"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/GoogleSignIn.xcframework.zip",
            checksum: "987ac2513c921c5269ccc0ec68cb83bdb8b9667d0eb59e95b34082370f96e627"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/GoogleUtilities.xcframework.zip",
            checksum: "61eb74c6b2ad672fc7b8ebc29a47bff10c9b6731bced288d8d1cb16a41ded253"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/GTMAppAuth.xcframework.zip",
            checksum: "d5b62cff9f7cf6678c0257fbe46f4923b0027231e1d6590a2fc8831919272988"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/GTMSessionFetcher.xcframework.zip",
            checksum: "5683c904b531495762af3ded74478744329bf8c6cb97bc17770e159dc50a6ad0"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/KakaoCommon.xcframework.zip",
            checksum: "0e028b9942de617bd4eecf9961566d917c0451e989512e15587b93780369964a"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/KakaoLink.xcframework.zip",
            checksum: "ab17a3b1e151bceb8c2f5140d4615f0d3bb79af8d08164b7cddf161d59b02d34"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/KakaoMessageTemplate.xcframework.zip",
            checksum: "a3fb96948af6bb662ca4f2dfca5a71ac43bf95efd4324dda83d4f0f88320ae25"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/KakaoOpenSDK.xcframework.zip",
            checksum: "194edd4acc4b5dabd7b839e4f864ea15be92adce6b3085a2a8198b6eef003025"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/Masonry.xcframework.zip",
            checksum: "aef65debe77a94d9b8b85e2e06dc7f348e635eddf54677568b7f704fe2c7b11e"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/nanopb.xcframework.zip",
            checksum: "c8f1230f1666c754a79932dad5b2ca2ffd8e6037225c35e7af3b9b1469cbb0e7"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/NaverThirdPartyLogin.xcframework.zip",
            checksum: "cb7f275db0bac4ab5d2f6377785425a0293e0849724b4ffa5f233327639c9d67"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/onesdk_ios_ubee.xcframework.zip",
            checksum: "53af17373b1a2cd5d3313e2407ae66370261bf286d5bb338b4216699d5f2c087"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "9de9922a13f0164726e43639ee4cbf86bb3885cabcea60f1d8ee874bd61b415f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2c81a86e2bfbb0b12622b941b45c1552dbb72549ce08b6d71b1244623c23b82a"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/OnesdkBaitianFramework.xcframework.zip",
            checksum: "89e3e73acaee5dab2b3fb925419456556790ad11e996ab013dcd17bc9b75af4c"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "642d5d5b6a4e65644b4f40dbe44fe43b062a6397a9c2029f60b5c96c720236be"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "d4580dbe99885ab9f46f8d69ae7be2c013abd36f0c0489edafcd72c1cf330ac6"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/OnesdkSeacommon.xcframework.zip",
            checksum: "503c7e7fdfba6616af0a8d6373785bfbe758809bb6dd5cc79c884b0ac0802aa3"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/OtherPartySDKFramework.xcframework.zip",
            checksum: "8718eb8f589e3dedcddc047e2e423313afa52f21d8ec8035516ffbeb1c384cf5"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/Promises.xcframework.zip",
            checksum: "1e5f678a1e3c62034bca08fdfcc4a4e28d0c0e0b9909bc6539fc291d0472bd99"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/RecaptchaInterop.xcframework.zip",
            checksum: "f6e9f51c2fbf98722aa08defeb572909b6c622431fb3f578f12156ed442d0af4"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1562986/UnityUbeejoyManager.xcframework.zip",
            checksum: "b3c9d1bac460ff82d7eddbbdc9b560154fc79371f6d2cbfa21c4204268a7d419"
        )
    ]
)
