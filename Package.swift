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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/AppAuth.xcframework.zip",
            checksum: "70a0d5c92204d17a7026e3bfd9233c9c3793a075b5fe8e9271f881e3e9b3a071"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/AppCheckCore.xcframework.zip",
            checksum: "ff617538a9cc93f117d7f35f4d8b71195977848f7ae07c8b9c13f2c6c03a51cf"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/AppsFlyerLib.xcframework.zip",
            checksum: "ab22ae0141ca7a0cc222797734a399afe768d991a0ceef29d829b91ea0a95601"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FBAEMKit.xcframework.zip",
            checksum: "72664bb3efdfc80cdcd06a82189ea56d911271a9ad978033c19fc61f06fe702a"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FBLPromises.xcframework.zip",
            checksum: "795b29b3c53f450100a39d636e83134591942e536e22a34d1f69597382715daf"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "cb606316fcc955357f6ebcde0139f30c5b3c04126fa80b9e8dc2d15ac6870f80"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FBSDKCoreKit.xcframework.zip",
            checksum: "de628ca78230c0356ec60f9d9fe6d5322309809c5b75af024686fa9f96c4eee3"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FBSDKLoginKit.xcframework.zip",
            checksum: "a4d63a7655874f23359f33fc2d01f14a642c7b52b2ef681f2baced57c9dd5a7f"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FBSDKShareKit.xcframework.zip",
            checksum: "433242a3d944d1e696c24b0df42036121b413190de9e83f7194da70340e8d8f7"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FirebaseAnalytics.xcframework.zip",
            checksum: "82f1c2e60f420e77f9559525b6d07480b22faec4e72dd58ab95b1f2ef1584187"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FirebaseCore.xcframework.zip",
            checksum: "9a2cb8c7df28f17f74ab95c1ab9d01a2190547a09d494d7463b8bff80a090691"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FirebaseCoreInternal.xcframework.zip",
            checksum: "444fd7585defb2b13ed2941f202748789ac778ed4ab8a4433fbf25963154d0ca"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FirebaseInstallations.xcframework.zip",
            checksum: "59dda1d8b592eb8b0881c675c4a54cdffc60579c31f40490dea1c82fffcc09db"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FirebaseMessaging.xcframework.zip",
            checksum: "7ca520e55c50193b81444d38f87d5982975ba1992a5eef70e7135fb1784f0bf7"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/FMDB.xcframework.zip",
            checksum: "a0728e828e9e84721a2d94f7f85b93ba25f65de17a706bef0ef96f4bd12c20f0"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "57cf760465b1a69cd7c21f8a8af25fbfd0191670fa1657ee7424ae43f43630cf"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/GoogleAppMeasurement.xcframework.zip",
            checksum: "966fc1fab4c5b9697262dbb95adae9d7d1047fdc99f1b76037f1ba6bfc99bbc3"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "8e46b2ebc0fa7ccaa5cd1f3c3a1e9b945f9a76638059fd1a3c0af643735c9d05"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/GoogleDataTransport.xcframework.zip",
            checksum: "90e64d52680c8f2e22258acfd7179d5fba3052968f3e1db66acb77c0431efded"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/GoogleSignIn.xcframework.zip",
            checksum: "790bb62408f0e94560415431c477459ef35b492312887a8ec735f0a7ae58c45d"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/GoogleUtilities.xcframework.zip",
            checksum: "273e8db628524e82b96eb010c8817d5fa47a9b66fcc42626e96e9ef11ccf03e9"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/GTMAppAuth.xcframework.zip",
            checksum: "76023ad4bd4dc86ca525b1a083878128f622967379f53d2c3158e056da7b69ee"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/GTMSessionFetcher.xcframework.zip",
            checksum: "27d032c9c1898a6a6b08ac6dfd4721306f4e341ad3ff3493167aeeadfddd2495"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/KakaoCommon.xcframework.zip",
            checksum: "2b2b591e1304405329464b94de67fb77327893474ea6caad8e78f8bc7466ee21"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/KakaoLink.xcframework.zip",
            checksum: "5b3869d30218d38fa06f87b7bca0bc729568c4cdb35b048398be5b8bd76a9bf6"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/KakaoMessageTemplate.xcframework.zip",
            checksum: "ccc535aa1b91dc14a4b45fe0a4afbcc3b17f7a83d5936bd86bc92a295d9fa0ef"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/KakaoOpenSDK.xcframework.zip",
            checksum: "d8041701116ae48dc0d23351f44d523d9f7510b43511a34ba4f47a070014373b"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/Masonry.xcframework.zip",
            checksum: "96c03518246c533320afe40f0c7817c90962b8efaa14e4a44b8bcf0e5ace37de"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/nanopb.xcframework.zip",
            checksum: "954b073d36e0833a3744188424ba9f0a48aef8728dcfcd89c98f9d06d3bf6685"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/NaverThirdPartyLogin.xcframework.zip",
            checksum: "86ac9cadd4e6d21fc1737fc975c3ad7986b5f088e34cc117501894991dcc6cde"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/onesdk_ios_ubee.xcframework.zip",
            checksum: "fb8454a12494f08125dfde12c9040f93b709870c111d4f2030f9907f7c8a3112"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "67383f3056a03720b045291c8fbfd37ba9df3485137622ed49f595f2f227f3c4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "346a789651de5c3a55a0e74913eb324d20e7c4fe1813c68942531ddc10c9df16"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/OnesdkBaitianFramework.xcframework.zip",
            checksum: "3024d1df679a19dfdb3ab4aec0410d44ff02f2542b1935bf103015eb325c42c5"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "4123917c0ce138e12bf308e5091307d0c58371d94e38dc5d5379d914c0f7b903"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "700754acfe1b764e8d395e28eb139e6f4a7bf09162e224eb2e43366a38641cae"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/OnesdkSeacommon.xcframework.zip",
            checksum: "c8c2b9d4d8614c940ce1fd25c37aec4d4c158457a8f7431784310fb58ab86301"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/OtherPartySDKFramework.xcframework.zip",
            checksum: "447c4778bd7f0b62af1a4ae9908dc333b8b4855acab35b8cf497e6858c05a3fc"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/Promises.xcframework.zip",
            checksum: "353014a4df53fbc7de17dbd4f117e21f933c6c028666dd13d066553d44d004b9"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/RecaptchaInterop.xcframework.zip",
            checksum: "fcf69d4742874c0ef0c2b3358911cf4275c6713422bdd2bbeeca5f848759b937"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559791/UnityUbeejoyManager.xcframework.zip",
            checksum: "89095bd18663fa02cb514af3e24f08c950ab2397e2bf1dafd53a9b1ddbf941af"
        )
    ]
)
