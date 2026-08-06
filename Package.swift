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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/AppAuth.xcframework.zip",
            checksum: "67dd04855c5f8f457ac77109bdfe2a1b9675ebe6cab6e7373526e0b49702ac2f"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/AppCheckCore.xcframework.zip",
            checksum: "c9ca610b9ef17c0883a39e31f706f38fd1a862165a35da6f102a1140d9e70860"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/AppsFlyerLib.xcframework.zip",
            checksum: "b17a35234fd85b75d022d1cadc1e43b2cf3b16d2a35438710f252e9946dec2ee"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FBAEMKit.xcframework.zip",
            checksum: "6c39e00db0599b3eec93ce643e54ffe88b12a88b5ef34d6055cda152b1ad7de6"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FBLPromises.xcframework.zip",
            checksum: "21a97347c9a336b0d43d37668f6df13bf89fd376d54dfdf6600375f899c7b605"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "71d8ee2c41d47cc9eba51c198cdd9eb9cbc488bcb8146ee6fe78e0f2e97fa266"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FBSDKCoreKit.xcframework.zip",
            checksum: "3b224391bd911d9424ee711a6350338469649ffffe7376f2f1ef3463325c1519"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FBSDKLoginKit.xcframework.zip",
            checksum: "fa11b348ed9e3dc6f831d6574935727ba10aec5ceaceb2409cdc9fea762c3399"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FBSDKShareKit.xcframework.zip",
            checksum: "24c2144e5e54e2de10465e2b9c028fc3ffecae1d4a8e843ff95b2dcd3ab6924e"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FirebaseAnalytics.xcframework.zip",
            checksum: "0927b263c839b6cea12ec3f8c7382d1200f859ba79183636335c464c9c265423"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FirebaseCore.xcframework.zip",
            checksum: "10f3bb997bb3cb14dddd9bc0ce1efa2b153799950999dc0109ffd2772f1df571"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FirebaseCoreInternal.xcframework.zip",
            checksum: "86804a911f342491ab0e9007a9127a8a7883f5ed58ca0cea70f4d239576b836c"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FirebaseInstallations.xcframework.zip",
            checksum: "892eb339aaaee04399d833bba8c8f7e0307a4ad4b68d1883c3bcc6db8a1b645c"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FirebaseMessaging.xcframework.zip",
            checksum: "72b364c74a889d2344170de04234ee08a5e7b543b2dabf0b7ead053f3a61f2cd"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/FMDB.xcframework.zip",
            checksum: "803ef5a93e813725cbaec996ce2f9794afeb746d2b5fb73d2499f45839f3b61e"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "e54bd9e27b523cbb67c7e08f983eb4dd1e905ee72e4c067f6f95d5239918925e"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/GoogleAppMeasurement.xcframework.zip",
            checksum: "ec41083786ebe26658f37722f5cde6601777a2ffea560d41659da81371307b16"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "5c14661c1ffeb9aba0c6402265467ee8e94d59eb4f4bfd157dd37bbc9f2ef627"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/GoogleDataTransport.xcframework.zip",
            checksum: "33841f50a3a1c3a51cb22841950567595e26a06fdcf23f6d6b7c054f68fa808f"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/GoogleSignIn.xcframework.zip",
            checksum: "852ef16e4354d9574aadffaecf7b4520325740d616366b7f4e201d1496e444c1"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/GoogleUtilities.xcframework.zip",
            checksum: "3cf9c441bd04a89a4d35923742ebccc7c1cec07499a09bff1841d01df25b8d08"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/GTMAppAuth.xcframework.zip",
            checksum: "4e0503f7d460ca5073fbd521bf645af422e37c11132b182e7ac7b84e5c80536b"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/GTMSessionFetcher.xcframework.zip",
            checksum: "0371142177148b3c73e1e6215035b46cc5a489cd4619217e13362e8abff2b5aa"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/KakaoCommon.xcframework.zip",
            checksum: "79969e3b27c7f329d69293bd0acadfa876163bd611fb2e053cb645fc5796c5f8"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/KakaoLink.xcframework.zip",
            checksum: "487d932cdae45f6b00ddad9c883ac014d605db379625dcbb6acab3df69331300"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/KakaoMessageTemplate.xcframework.zip",
            checksum: "97a292a585daf4d9bea5190557712f6376b92db20db5d6aa0fd6342b9d21f019"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/KakaoOpenSDK.xcframework.zip",
            checksum: "1e739ab572d80764b10871fcabee3b906bdd3bfae28feb2c416c3e76ebceff98"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/Masonry.xcframework.zip",
            checksum: "3a057de06dec326fe1c3e6647c6c8389c2e040d6aee8c0c0f06171cb81cc33cf"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/nanopb.xcframework.zip",
            checksum: "16f7e114e31aa5366afa07d6614dc277c0ad75f35f68243578bcfdb6b7501cd6"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/NaverThirdPartyLogin.xcframework.zip",
            checksum: "0b03078e5edc0fc4e30a4e7422337467d239096190e1d5da8b01ea2e030fd5f0"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/onesdk_ios_ubee.xcframework.zip",
            checksum: "23c48691c72ac0c490de0e3cd25bde35b6bb7ceb27612b25234d8f547d8d1a41"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "6c3118b5f51b5720c96b3e6ceda2d3ea224dea622bd82168c9dce0787e27d88b"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "2b00496349ca7fb5dfc922f88390092980116e1666f46f3a543ee8a60e1f7156"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/OnesdkBaitianFramework.xcframework.zip",
            checksum: "0b40c4f825fe3482ab8331b3ab62616623dc4d0dae9a0fa2136a5d17908196b2"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "439fd68b9f45db1637796af70eaa77c3fde2946babbcba802cadd66aa11eab8e"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "8e07dff07b573acc70fcef0b9b6daf072d10a573a2253663637ab3335910ed61"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/OnesdkSeacommon.xcframework.zip",
            checksum: "f21a926e31caef2254b918ff190663b08db9622b421d15eeddbee4ae5c18ead3"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/OtherPartySDKFramework.xcframework.zip",
            checksum: "70697fe522a9e2deb17125238bb0e02075c3c13c3bc8c3eb05b3bfac4b6dabf8"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/Promises.xcframework.zip",
            checksum: "039003c6f7bbf637601c54344504b91b2f68d737675ba8a1b53d0bda5d941734"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/RecaptchaInterop.xcframework.zip",
            checksum: "8d539d0b127e00d8c376c4cccb34868465272338f140adffdde5fd7349ae5910"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1501111/UnityUbeejoyManager.xcframework.zip",
            checksum: "af16047c60de4d2800e16b20ae9a9a1dc82caa8d5df6c2a67d1c72afdbc761a2"
        )
    ]
)
