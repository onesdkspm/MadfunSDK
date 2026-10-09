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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/AppAuth.xcframework.zip",
            checksum: "a6b79208c35fbd691b79a108a74ce9f49a617ee245bfc732ab092effa9d9fe93"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/AppCheckCore.xcframework.zip",
            checksum: "47daf1df1decbd6780b0c8b2bd758a7faa9b51b54047ac2bdb230d24bf800d6d"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/AppsFlyerLib.xcframework.zip",
            checksum: "ca119115e9ac6a5195d32304bb87bab1b86c953b5331f2b7399ca82f21ff236f"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FBAEMKit.xcframework.zip",
            checksum: "986780ef8df9f60d6faad179814cb5090b61987b1dc8783b0f0cee6ad7572123"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FBLPromises.xcframework.zip",
            checksum: "162b2c5b195c35052aabf9a2f70ae284884e2a626188fe2d497337b95f7622ae"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "2b03c81053a56a1a048c302e731130984d7d285ed2cdf98b6e7fb5d877f85987"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FBSDKCoreKit.xcframework.zip",
            checksum: "88bea2130588f12bc38a8a7819c0180013cda606bdc688589e9bc4a4352679b6"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FBSDKLoginKit.xcframework.zip",
            checksum: "efb7ea235ef6b2f8df3f7661fe10f6c84bf5c8bd551d89eaf3fcec7657bc196c"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FBSDKShareKit.xcframework.zip",
            checksum: "8f9ec7a09f4933342a7e95e4484127318df310b70dd848f63f1c5b6031a8e50a"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FirebaseAnalytics.xcframework.zip",
            checksum: "2b0050ae0a2f44ff854db0044bf597e53e78d6ee4e33cb1bde8d749e3d05bdfe"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FirebaseCore.xcframework.zip",
            checksum: "1f39b0f29c624f4b12f0d7197499ca03304c2d0e3e9fd55d29d155b864463a1d"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FirebaseCoreInternal.xcframework.zip",
            checksum: "5db50e7b172876299b9827acd2cb904a5fbed85645fb355caaf1f2d311326848"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FirebaseInstallations.xcframework.zip",
            checksum: "b7c2f49f9fb9cdb3e46e75782069627c6cb091f593a4eceee3830458c56973b1"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FirebaseMessaging.xcframework.zip",
            checksum: "18f985ef1ea85c28f2ed6e1ec34958bfd3c7faa17b899eb79bd61377fc439a77"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/FMDB.xcframework.zip",
            checksum: "5f420b5f4c92f93d6f1d97cd882ed7daa35e24eab649326565d431c4500fabd0"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "50e8570a1abee0fdb8ec415c7e75900ac7da21d010940f0136ae2872eb88ef49"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/GoogleAppMeasurement.xcframework.zip",
            checksum: "33d442f33650cd2ca9ae602483677f0489ae33909747272637faa51b9564d04f"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "572bab1ff48bf18c2216cb71114e0551a33a9269aafbf65abe5ef56f629d3d9e"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/GoogleDataTransport.xcframework.zip",
            checksum: "facbaae998abac2d17b9920cb7163647d1e6f891318dc46795b111064c5d315a"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/GoogleSignIn.xcframework.zip",
            checksum: "cc1548f50997d139949501e5c69436f03c9d8ddd37276fbff1a0afb08cb95922"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/GoogleUtilities.xcframework.zip",
            checksum: "91ef908ce4fc55f37895082a3c04a98ac03bb4463722dcc816786c8c624d450a"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/GTMAppAuth.xcframework.zip",
            checksum: "cdfc172f70c623ececceecd6cadbb2fc0acfd7bb41914632ee261f14b1710a6b"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/GTMSessionFetcher.xcframework.zip",
            checksum: "e4cb3a237f100145e230cacb0ada9aa0bdc8a8006581d3f5a4c4b786beb8c660"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/KakaoCommon.xcframework.zip",
            checksum: "047b11b4df1c977d29e62129be096085f44bbe80fdf6b362999e3011c2617176"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/KakaoLink.xcframework.zip",
            checksum: "7b09cfaa21232b313744a9fb30df699272370fca1fd1a5054dbfd52890d76312"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/KakaoMessageTemplate.xcframework.zip",
            checksum: "238ed7bab43b62bed977732287fe81d2347d1ba0cdcfd655c51a667d87527c4c"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/KakaoOpenSDK.xcframework.zip",
            checksum: "86c95cc48cf1e38dac4a215e9507baf0d7f982cff1ce55cd0cfaab215e97c4c4"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/Masonry.xcframework.zip",
            checksum: "229fb3149229ce0af4259d2b2c6b0aef10aa3b3505389ac9fc8368c39dcceffc"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/nanopb.xcframework.zip",
            checksum: "23662d30661e4019335f87c8c54d263e92e99641776ba8d57de891ac0f1a3512"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/NaverThirdPartyLogin.xcframework.zip",
            checksum: "db0dea6ad909d4dc2446ac5aecb630ac3f26a8e5980bae7a43d48af69c1b5585"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/onesdk_ios_ubee.xcframework.zip",
            checksum: "df09ca0c12b1e3a8cca37ea99e2016baf5bb5ca4a2fc764bf59de37e655a3b12"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "a574134499affe1448efa950d2aa2bb6b9a86b936dfef075b7669e0dd3564f92"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "9aa68bf513c8a5e655d1c7a68444e2bb5433faffc53fe6b19b128665af6e5fe3"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/OnesdkBaitianFramework.xcframework.zip",
            checksum: "96dcf35b87560f4562bd5feaaf33f98d1d49834cf8a6c52ff1fc0519f5b6dfe9"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "7f5e947e076077b3931a760184ca514e596480d66730ff0669edc3e60a4ad8c2"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "15048cbbdf28f9b656962776bb042558cf568b8028255a62795ad18183e452c8"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/OnesdkSeacommon.xcframework.zip",
            checksum: "fc7a672aecb96437ed102629290dbd7647c87fe1cdb65e70dbc411f04e4ec617"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/OtherPartySDKFramework.xcframework.zip",
            checksum: "a9cb9f4623b979d9e9fba7cd4e58017f4532608abecda0b64ac84463415e9751"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/Promises.xcframework.zip",
            checksum: "9f33f79cd94ab13954ff3cad9ec32d40e884f55b917f4dce3c79a8ab70c2e5e4"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/RecaptchaInterop.xcframework.zip",
            checksum: "7260321d6d6a1a9259a16774c00e98cd21bf231a6877135e27ab4fe122f59583"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1541868/UnityUbeejoyManager.xcframework.zip",
            checksum: "9cdc15b1a807f6a4d7411edd90177b1ed7332f0bd86ea72dd47540e03bdf03e6"
        )
    ]
)
