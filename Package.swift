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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/AppAuth.xcframework.zip",
            checksum: "52f3be65ee6d35aebee12f5234db8b5771b72a20888f6e52af6d2ebe0884e3db"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/AppCheckCore.xcframework.zip",
            checksum: "1c6ca04bc4a7d713d4f8842d4c8c0fd2f90328d87e919d72e349dbe56da77bbb"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/AppsFlyerLib.xcframework.zip",
            checksum: "a4c9057ee46cde9ccad2fa9052f2cda84c23601798770657ef666fab5160d9f5"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FBAEMKit.xcframework.zip",
            checksum: "4b07aeb52a2f184323bccd14c3cce0e22b1a29faffac5909c36db4f714c431cb"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FBLPromises.xcframework.zip",
            checksum: "18a5d6cad62221f6a7a7d2cdcf286d9fe5904cdce43e760791c0d3c572f96284"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "ac300e81f38d029fabaee49dd4128e0a80bda305616131f7ee2a69e8649a9c37"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FBSDKCoreKit.xcframework.zip",
            checksum: "5305f193c1bb7663b4dbf161e1485ed1fbf7b7edd9c44a370301851b88b7257d"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FBSDKLoginKit.xcframework.zip",
            checksum: "9d38322ac9a9a5f2b86f5d67aace43824ca7d513c864d8ee35f29286dfa89142"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FBSDKShareKit.xcframework.zip",
            checksum: "0512fbb9f0a42d408afc0450638399eb0516b5f1bf0a40e90b5ec9690e6c3e17"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FirebaseAnalytics.xcframework.zip",
            checksum: "685c7e870c61ec86a3ee8a6593bc53f8eff3a868818b3d2cc5e2d57b243133be"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FirebaseCore.xcframework.zip",
            checksum: "0e1ba179cce67dfd8560a8a98d648eef42362230753297935e012251c5479156"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FirebaseCoreInternal.xcframework.zip",
            checksum: "6e1af4d4d869457e4d5fb336479999dfe21d96ed27e8435b7bf9ebb743cbbb51"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FirebaseInstallations.xcframework.zip",
            checksum: "0528f492a7dc06fd36180c623906ff105d09e74db929005218c2593daf4e451d"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FirebaseMessaging.xcframework.zip",
            checksum: "2acf93d8855a02124b75a6c58222af54882d1106e813afc7ef0f780cc0e950ff"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/FMDB.xcframework.zip",
            checksum: "31eb8d35b2d0393bfdde20fdf4ba4534f9ae124a40859622f4d61debe3170a23"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "1619816c88d4042fee45c586e431c6d063eed4b7c0fddf0ba1cb6d35e425d56e"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/GoogleAppMeasurement.xcframework.zip",
            checksum: "dd4ede6aa407f81df0dc1b00080b8421e0431a37b4b373a2e6bf927cb1f60828"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "2394d106e8f4b6cc3380b95b352c50a5c034672258822cc10caef4f28d72cd73"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/GoogleDataTransport.xcframework.zip",
            checksum: "2d74cf6b6258e525e0e7809458d31a7dec356f55ce4ae4f75ad318283391883a"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/GoogleSignIn.xcframework.zip",
            checksum: "3c7d95d6f3aaa3aec73c77577fd3ff2eb9bff9ce7180b5fa762be21bd2d8ec12"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/GoogleUtilities.xcframework.zip",
            checksum: "4dcfe03d3775859e5eadc7bcdef3cb383acec3e189bde3a4b6c6365484d6aef7"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/GTMAppAuth.xcframework.zip",
            checksum: "e05d3bbf6d40c2a8232d5118d336bbe094d2de06126c6e51191c2b362f334f15"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/GTMSessionFetcher.xcframework.zip",
            checksum: "d5ed560bc0306396c971741a6c2020441b50886964fcddee1c044326956fe12c"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/KakaoCommon.xcframework.zip",
            checksum: "221676173b08e9f723ab0242605276f57214c431f5b8747eae1033c556d5ef48"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/KakaoLink.xcframework.zip",
            checksum: "4f00c9171559dce073ed6b09afdd661b00584ef23d69a4f028bb51360cb04aa1"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/KakaoMessageTemplate.xcframework.zip",
            checksum: "d37440c1816bc476d234b603a34cc32a1639d3f4e400f8f5461806af3dd4ecac"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/KakaoOpenSDK.xcframework.zip",
            checksum: "e8cd012476b999b96f251d82effe71e06b216a58abfb8888a6a8768e0421f361"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/Masonry.xcframework.zip",
            checksum: "4d6891d9ba5ce7fa70b55ee3f14dd825edd270981841928de6a469a780c78c71"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/nanopb.xcframework.zip",
            checksum: "f4ce8c8de7f652162a85293f3861fc6e89274c41a5559cca90253aa20c78b68b"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/NaverThirdPartyLogin.xcframework.zip",
            checksum: "cef7b9b573c56a7e38feb18aa5f531280c999dc222504bf4a83ed2df81422475"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/onesdk_ios_ubee.xcframework.zip",
            checksum: "72d94f0cf32331edcdce2fc83cd41460371f48d417e7e440b127753287c0a0d4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "a6061c2cc8e5b194bd097d0e0dcc0764e7aa3d1bb1899af886e5b2c4ba3b879a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "7f19e1861e4a9a356e6b31dff66f72ac613c61b5746b3fa842f210a50b43d13c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/OnesdkBaitianFramework.xcframework.zip",
            checksum: "9fbac4f72a4c91d19f34b608838488d775e9e49d2f7654029689de4a26f7e040"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "7afccc295e506c2cf4a68136d596b97fc76e451716557902561e8d6c3a63ec23"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b49933050e4354195c1a5b4e438d477f43228c6297a6b6b173f9212f2be6081c"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/OnesdkSeacommon.xcframework.zip",
            checksum: "e3dcde3a9acfe9478187c5f0711c2ee0e6d2a5cfe75845570aecefe4f6c47464"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/OtherPartySDKFramework.xcframework.zip",
            checksum: "7f7756224ea30ac3113feeec9d98108568a12a2062c1f48013d2650e693489f4"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/Promises.xcframework.zip",
            checksum: "fbff2a6c266ccbe8f4577179ed28f8b587571469ff171c70aef51c1dff46862a"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/RecaptchaInterop.xcframework.zip",
            checksum: "f2ed5319072ac4e477ca62af245f04a04309900eee2d2a77dcb79f258d35c937"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1553229/UnityUbeejoyManager.xcframework.zip",
            checksum: "47cc9096de8a4d8cb9d1e9806620f79c1d5755bf917f140bdf3852bdabf1fb8b"
        )
    ]
)
