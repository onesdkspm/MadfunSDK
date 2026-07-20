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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/AppAuth.xcframework.zip",
            checksum: "067311279f26f44416427519db0f53b8e90142035e4268c5314b16c2285c81ec"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/AppsFlyerLib.xcframework.zip",
            checksum: "9cbfc42dc450180b1d192f61c10fba85c49536df4fc5e17547f9d2403ad1f33a"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FBAEMKit.xcframework.zip",
            checksum: "d0400766c11d025c23c1378d73f5f4ab57ee73e6749a96eaca41866d38358a86"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FBLPromises.xcframework.zip",
            checksum: "4159e38ecb32710d76730b2b261802064ac3a69df0e4206f4469eab66111ed05"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "c6b2b290fba067ac9af7230c8bcf56e85de235c9c2c4a2ca4da492fce18f3d6e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FBSDKCoreKit.xcframework.zip",
            checksum: "c8407095cb344ec6ba0fedb2a5063f14bf0c6be895837083fd2e79850c2db5a4"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FBSDKLoginKit.xcframework.zip",
            checksum: "b0972d2b9161c16bfe9f36a525a0bfc748536f7adbe26c30c23962469e346c2c"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FBSDKShareKit.xcframework.zip",
            checksum: "b22b0130bf7e436c03691e57b413e209ff8db05b7c7aa7b47998dd00d8cff2d5"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FirebaseAnalytics.xcframework.zip",
            checksum: "8072ddcaee788ff61b57107f052045192e27996b582d3ec12c0e5b75e40d7902"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FirebaseCore.xcframework.zip",
            checksum: "3aedf385c0a26db0ae6b13613734f7b1ac20853b03ccca471764ee6cbb318bb5"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FirebaseCoreInternal.xcframework.zip",
            checksum: "fe412ffdb6041d42025115bcc21d94bd3bb01daa22761d02128bcc3f6e4f42f0"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FirebaseInstallations.xcframework.zip",
            checksum: "d0e357df02122bc75befc18d5e58f8a88650d95d2828aa7135b254d8febd03db"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FirebaseMessaging.xcframework.zip",
            checksum: "68724ce9e7916a59f047eecabe3cfeb20d4d72b903f2389e5d7a19206b2b1afa"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/FMDB.xcframework.zip",
            checksum: "f86c6d2b68f4d7bc7df4bcc683491a37af60687524900000dddfa7d487b082ca"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/GoogleAppMeasurement.xcframework.zip",
            checksum: "ba5bc33c934d440e5dea6712e786108fb90249418ba29b731d43d4046dd636b7"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "673cadf41003c893c3dabc9eba0e245560986e41066830d1e8ae1811d5db5a7a"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/GoogleDataTransport.xcframework.zip",
            checksum: "25b531dee8a98b6a0800fa9b64c726c504d039d811e81433eb28a56474aa07dc"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/GoogleSignIn.xcframework.zip",
            checksum: "896445cfe3a1ab6c0fc7787f60c12158d9a49ae43700c0b2b8d2d44445efb24e"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/GoogleUtilities.xcframework.zip",
            checksum: "11b340d13fdbb1fe530040f713b81cd560ed27cb0d53ad113dc9002dd344b358"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/GTMAppAuth.xcframework.zip",
            checksum: "9e7bb7c5a08faebeadc78b316fc12b53f6aa9e3628ea5ce71b566c4a5dfbf75c"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/GTMSessionFetcher.xcframework.zip",
            checksum: "148d41ea47a2a47bdaeac9b994a7116bb4c334afce5d54af9df319171e151794"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/KakaoCommon.xcframework.zip",
            checksum: "22853bdea9dab8be80bb06d46c1cc4be2c4089a5b581e6aecf33629194e208e6"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/KakaoLink.xcframework.zip",
            checksum: "2838332b122161cacc847147a22c91f1cef8e1675fc392df20b6a46fa7cfd7bf"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/KakaoMessageTemplate.xcframework.zip",
            checksum: "e0cf10ce6f6aaeb21493e66b0317380d47e5c921dee28761d91284bfa23aa286"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/KakaoOpenSDK.xcframework.zip",
            checksum: "ab9bb97fa0cdf1bbd6c779fb61f40df7cfa5ec9efef64f4b69472eab89bf87e2"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/Masonry.xcframework.zip",
            checksum: "8f4d2293d6059e1adb1dd0f1a2dc56982e4f134413987be31000dedc6fce46a8"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/nanopb.xcframework.zip",
            checksum: "5fa1e65b8543369008f9165fdbfa41156b0eb67c7a9613edde5873cf9e90a53a"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/NaverThirdPartyLogin.xcframework.zip",
            checksum: "9e6115cc75794f2262cb18064751df67f604dd86d051c2f6b71d51c9e2bfe81c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/onesdk_ios_ubee.xcframework.zip",
            checksum: "266946c89843875a83497c1c1ea78f7d112a809d55eb4ca3d7ac9045f88df2ae"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "2b2ddefe21ba71d134c4f56ddc40b36fbbefb0651581c6419cb561a38e89450c"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "a6b91f7680f25c315f56a542fac939de497e03eb8d3950d7f70017cdc4618be3"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/OnesdkBaitianFramework.xcframework.zip",
            checksum: "6b4d62724929a347df61fd9105df359c0ab7fb73abebbc229ee3e4627337c147"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "1eac3b00dd1c89a512dece9190d5740131f71b35bb224696c85b5d76f04eaea5"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "ea5aa92e2cea8438f595ac87fcb65ebd731994c3f301c3b4df5c1d144605afbe"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/OnesdkSeacommon.xcframework.zip",
            checksum: "0357e9da1de9a11b452968c986a139420e35e0d73fd292b0a25d342f78eec170"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/OtherPartySDKFramework.xcframework.zip",
            checksum: "6777f68857f6ef73ece5fb83fc290a8f23b514cb0df021769d61e44dca9b0084"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/2.7.8/UnityUbeejoyManager.xcframework.zip",
            checksum: "aed9da17b5db7fd30c084c1e1dae27d1dd4f1288480f701aa2707038af1fdc33"
        )
    ]
)
