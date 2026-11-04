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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/AppAuth.xcframework.zip",
            checksum: "632ac8f27eb71c12514bfcdc015c42c6c9c3ce6449c682bae49e290f2d81d163"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/AppCheckCore.xcframework.zip",
            checksum: "11179241c93e5dcab2978a8ce2e26a69960cbaff8b875a63af2811e8129dabf5"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/AppsFlyerLib.xcframework.zip",
            checksum: "984a2e123a7912b341f4bfc23f728917655950bc747b41ce77bd334af4dd16df"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FBAEMKit.xcframework.zip",
            checksum: "11e9267f162a53df0edef774adfd243dea44035a0b3ef12b1dd820ee620a2acd"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FBLPromises.xcframework.zip",
            checksum: "6efa78ba296d55da6d5173915251fc4f90a5a8aa89af02f4a618fcf4c74e9a3a"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "1f39b444bc3827a9b212e57601d2fbd69aa579bd94be9eb3d01eabc0c7628d0b"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FBSDKCoreKit.xcframework.zip",
            checksum: "22e1dd0ed5e88180381c5983d1ac5840eb19c216de1e4d621c4ef0d7e68f404b"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FBSDKLoginKit.xcframework.zip",
            checksum: "f879ede10196d9ca1dd0ef2d68240360ab3582fb4355f59e6377cfcdcb32f36c"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FBSDKShareKit.xcframework.zip",
            checksum: "3d36e35c767d5c021fb54db3b68468a4b06b07e5e020e878a1f63efa5e21cfbb"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FirebaseAnalytics.xcframework.zip",
            checksum: "b31e7b7ced3bcd556e481001ffb17a032ab55bf2bb432a84e099c4ff2ba10377"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FirebaseCore.xcframework.zip",
            checksum: "f62330b661934eecdea4e28f957cf3972a2433f7c9f557f3bf5857d49f883f79"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FirebaseCoreInternal.xcframework.zip",
            checksum: "c4bd0f0cec6cbb2ee8c15ede060ddae97fcaf599d4ce60a104bf2f4aacbc0e35"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FirebaseInstallations.xcframework.zip",
            checksum: "62f926db0fc9aa3dcaa33be2a9c8a0e39bbf38f0bdfd50d191c3fe2025736ce4"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FirebaseMessaging.xcframework.zip",
            checksum: "015d5af22c8b4891db47685e240ee5963d2ab5ae608b6bcf2a43597ae3d5bf07"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/FMDB.xcframework.zip",
            checksum: "618494899d3115dae4c23854b776f97ec529be152be16d38d271615ceac22494"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "91038f1bed13547b26402de7feafd7ab8ee82226b560848c15b95e5ec95377ed"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/GoogleAppMeasurement.xcframework.zip",
            checksum: "b10449f4a15f9bb793f6aeaba9d8618c26a59194b8bc7d554435ad2ffa56a70a"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "7ec95e081ca13029cff4a6e564ca3ae442f9852631af9dc0a2cd15bf2d4f00d9"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/GoogleDataTransport.xcframework.zip",
            checksum: "04a86f1fd73e078d035d5eb5c371877b1b13129336914afaf08dd786be72caa9"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/GoogleSignIn.xcframework.zip",
            checksum: "be353f2fa006c07edc19e7aacdad4b2d36e7ba6f2cb65e038fd440bfd06dc66b"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/GoogleUtilities.xcframework.zip",
            checksum: "fd52aa54e81d181c187ff6667507fd937ea2c0f6da614ced5fb7f38c62c09586"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/GTMAppAuth.xcframework.zip",
            checksum: "0f28c9fbc477c723ed8952cdeb6f0bc2b49945b260f0833a46025c8cb40145c9"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/GTMSessionFetcher.xcframework.zip",
            checksum: "a197bb37950a6180c9937b571cb4b53f995117c3c914be07d617e5b819e2f24e"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/KakaoCommon.xcframework.zip",
            checksum: "6e908cceb9a1120ed54a15fc9faf2376cea35af8b14360800e45bf42109d3f8c"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/KakaoLink.xcframework.zip",
            checksum: "ef06c5f082a5ef8bc935efdfd78a3cf9afaa256eb42c882815c50c490d7fa2de"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/KakaoMessageTemplate.xcframework.zip",
            checksum: "1f0ed31474e64fded3189e654a6e1c2a05c8631b77e6bb3adb861725c510e524"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/KakaoOpenSDK.xcframework.zip",
            checksum: "f6d7e502bd8eb94c9a729a5a757484dce747cf381371d3a9460506be1e0e452b"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/Masonry.xcframework.zip",
            checksum: "4c80b34d29d926ce834f1c39e7197c24d6eeb092fd17e543fcd0377e67450d19"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/nanopb.xcframework.zip",
            checksum: "8f7146fda8bb3c838bfb07cb608914b86afbdc9e0df4c96f56b5882696040301"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/NaverThirdPartyLogin.xcframework.zip",
            checksum: "cc1b942caedaa4898be34f1697f1033d8a299980a0d1d20fb75a9c55f037b988"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/onesdk_ios_ubee.xcframework.zip",
            checksum: "23bdcfa318468df1f3d4b9dd8367f27e55a3495b55e0030cd31f249a5f51b274"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "aa3c03110fc0f05aee3893be4b26af35419aa122114390679972596374c4b65f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "52b85e78609aeaa9b84edc8e8eb4a99f763887b5e49685afb0debd26e144933e"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/OnesdkBaitianFramework.xcframework.zip",
            checksum: "85b38e6df24f6e309cec74c20b2c15507f7540a57a08c4fa7c523df114ec2474"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "017187a63f5e47fd02ae0fb2c3a4f37fe2f235ae49f94be5f70cf6402c0edcda"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "ade471013558e59928d56929dd53463bab12eec035b8226f81781113ef130fe5"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/OnesdkSeacommon.xcframework.zip",
            checksum: "711b4c13a74ed2823bb66f54857ae4cf0533a59bc9361c910eb8661f9b0f3361"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/OtherPartySDKFramework.xcframework.zip",
            checksum: "86301fa92926c746861d8ccb45ad4c7c84311aba7c2f457e09565197998f0cdf"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/Promises.xcframework.zip",
            checksum: "cbbf9331ba54c52097fce665468bd3461f69b3106f4856dac9458878d14895a0"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/RecaptchaInterop.xcframework.zip",
            checksum: "d87cfa6db40b7243ad9129c95f7dc74e88a8f52157e64f56df9b0af9c7f68850"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.2-dev-1559652/UnityUbeejoyManager.xcframework.zip",
            checksum: "823f4f66996dfce33dca004205bd34d58b8d372340ab5f4be3fc94341564437d"
        )
    ]
)
