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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/AppAuth.xcframework.zip",
            checksum: "3ebfbb79965a456fbd36b5b8126c4018a262263ff31c39b493d51d2ec640dcd4"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/AppCheckCore.xcframework.zip",
            checksum: "bf8dcc9d0d5c4445ec5a824e8cdec0a8d65df91a53b2407cdc9f8382ed9b220e"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/AppsFlyerLib.xcframework.zip",
            checksum: "ec461bde70f206125e7287310aa811aa0d2434e80f08d65e9fe62c78841b5ed4"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FBAEMKit.xcframework.zip",
            checksum: "5124d11d8cae6c0e416ca2020551c122e84e431964ed3a36f53bc56ac2b4d3fd"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FBLPromises.xcframework.zip",
            checksum: "536e1c503a0e0415945ec9f61d0e6ff2207fae34081391629160dbb85c376afa"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "b48cba1df9ca633fdfe48756cb3fd73b2f021d25884df8c26d9a4d8b1e1eb6b1"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FBSDKCoreKit.xcframework.zip",
            checksum: "e035a15dbe0879f7f73eb32ea0f43334c133dfe70e2a16bb55e81535d25ad930"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FBSDKLoginKit.xcframework.zip",
            checksum: "a7a4ccc14c60704a9289aac4d95529726132cd7ef629ae5aa549f57c2a324959"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FBSDKShareKit.xcframework.zip",
            checksum: "0c35791b4e17989ea061015aa95fc29d456ded3624f9b7409e955e74ec775c89"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FirebaseAnalytics.xcframework.zip",
            checksum: "754a50b6d828ca449caf05a8625ff9f7a4a2f064a8cf07114979d57a19bf1825"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FirebaseCore.xcframework.zip",
            checksum: "9b9416613e793ab166731c94bd92b855e348e5ddc00da84e130bcb5ac209e54e"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FirebaseCoreInternal.xcframework.zip",
            checksum: "15fb502c6c052f882de2f3f5547ea6290bab7573ed046ba02dbd26199563e92e"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FirebaseInstallations.xcframework.zip",
            checksum: "fd156c5d500c3fde8eaca1efd6c8d5d96178da8c1afa06a4af49088ddd7e6e37"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FirebaseMessaging.xcframework.zip",
            checksum: "dadc4f2194fd06fcc4768bc1ca8846709a02f450961fff30c2402088569b70e4"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/FMDB.xcframework.zip",
            checksum: "de967ab87b2b6ae013fb9a7d2d8fbf148e2b512d01d9eb83ae04f00cd05aeac9"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "fad842c33b2f03c17d419a63df52055bf4c8c18ce67e59a770c084cf3e0c3004"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/GoogleAppMeasurement.xcframework.zip",
            checksum: "6a77cef343cd26193f73201d71e088b38dc9b4e7bee95fb9d0bb72103a43f4f9"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "b10d9112b0e407beddb6af47c92637cb52c15b040edce0a2c5d0724baa77c3ee"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/GoogleDataTransport.xcframework.zip",
            checksum: "bdfab383c9147a08e001959681f2e3fcad2271962c4f64f6bdef6eac1cc67474"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/GoogleSignIn.xcframework.zip",
            checksum: "9baf5a10a77a155181ffcbc1bb8e8ed093f1f48ae0dc132859f2252c437af41b"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/GoogleUtilities.xcframework.zip",
            checksum: "662a3f6ddf83e0ab66a853f62118eaa69392e3c44684c9533a5dc90b93e2a5e9"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/GTMAppAuth.xcframework.zip",
            checksum: "cf611b5ac8425ae4c15acfe8d5ad89c1608e41775deac65bcd7903e94078378f"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/GTMSessionFetcher.xcframework.zip",
            checksum: "54e7c5f714ce7ffff8355cfce953568354c19977a4f6a3c845f2a561e862e9d1"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/KakaoCommon.xcframework.zip",
            checksum: "91aee661529c91d1931f2b966c79a735307ac1c328ff19f2088ed70c4bc5df2e"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/KakaoLink.xcframework.zip",
            checksum: "7f9c8c210b8e1e4e909611403a19c951b986cd7033e45d46ea877b5bd1a88d69"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/KakaoMessageTemplate.xcframework.zip",
            checksum: "08a31d27f62372a66159dea53a286b8c980adca91552e4c3fb2bfd19005c306c"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/KakaoOpenSDK.xcframework.zip",
            checksum: "f33d1cc622eacfcce4f687ba6e0f6769c7b24e87ce16a0bb7c01159a5346a18a"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/Masonry.xcframework.zip",
            checksum: "d22ec007265c7c66c612aabcc66a077db1ef5dc3a4b84691e0ab7d1d81f5a27d"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/nanopb.xcframework.zip",
            checksum: "b64fb3e0c7bd97c2f01c72f89af9d572dbf7f25a3f582f74951fdc1c99713700"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/NaverThirdPartyLogin.xcframework.zip",
            checksum: "cd0a5e30728f402c295fac57844e643e4a3bdc979773a30f7db56ba1a67ff93b"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/onesdk_ios_ubee.xcframework.zip",
            checksum: "5dd8e5fec552c479faf6a4f8e15a2a0b100c956a44b04e6efef1c17926afed93"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "872d1552b457bc01ce94913716d78908e4b47bb618c84656ca5f645dd98cba8f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "4bb8328cb351cb1a0b610e7a9003a0492e3f60e2e409bed8fcf5d822e40e548c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/OnesdkBaitianFramework.xcframework.zip",
            checksum: "02a6d3361799501238e4fe09d14a7cadbcc52a30f14e2411664003713d94aab1"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "25433a712296e50358bc73b6425a6aaf2e5111dc598a95094f0663355068fd6b"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "08135198196629f13aa1122751b68497314f8544240d15dc50e3c02eee1b1434"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/OnesdkSeacommon.xcframework.zip",
            checksum: "b92f9a1f5857ac1c40d2a7c198cfd11041ea0df5c88f1469a7d8bc735ce0ee00"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/OtherPartySDKFramework.xcframework.zip",
            checksum: "0fc4b1e8cd3234dd17376e9058817e80ef3b1900411ac7a212cccf0e23ea7bf2"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/Promises.xcframework.zip",
            checksum: "40ba4d5d598be489ce14351702573ab0d60bb70e7733702335baac508631073b"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/RecaptchaInterop.xcframework.zip",
            checksum: "69169713d6cb906f4ef22253a71382a13bdb5a0b48c5bd289dae1247ad1c99cb"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1551185/UnityUbeejoyManager.xcframework.zip",
            checksum: "939449e9a07ce4692a7e024d20ca3fd62270c03d9ed2f3f68e559c0d86a37528"
        )
    ]
)
