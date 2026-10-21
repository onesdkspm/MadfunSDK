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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/AppAuth.xcframework.zip",
            checksum: "37d222c4ea3243893d2ef57665ff725c0373b94cb8cb3f034f71f8ecb530fc36"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/AppCheckCore.xcframework.zip",
            checksum: "273491745234c01434633cd50bfab7576988fcf46300cf3eb91f182205bbbee6"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/AppsFlyerLib.xcframework.zip",
            checksum: "bf07f3c691cf4db3140d20f420e0af70b4521246140732c6124511158aa16021"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FBAEMKit.xcframework.zip",
            checksum: "47de847db9827818b1d59bbf95eba654a88ced4575be450754c81da547049da7"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FBLPromises.xcframework.zip",
            checksum: "3423fffa068c139b56b55c05847bc21c7870997da8caca6175e212bc7bb4671d"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "459f6d118162c8ade2ca9316d5fed8b27cdbd826a8cff79b6a0437ed05a7f797"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FBSDKCoreKit.xcframework.zip",
            checksum: "e51ea9e1509a176cb14c75a15faf932bfa96482bdb08c4b326dc5ed95cc1970b"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FBSDKLoginKit.xcframework.zip",
            checksum: "2c3014a971bff9fee532af33fc6e64471a1036fa09b2fa60d79e2526674c49a4"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FBSDKShareKit.xcframework.zip",
            checksum: "8c8f40e0c1c8ebf17e71d3a0bf30f9d9de487303d7584188b35b13c619b9920f"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FirebaseAnalytics.xcframework.zip",
            checksum: "fc3b144a235d4fead6bb7a207fa74638da083d5d476bbae55490e219f7dffcf1"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FirebaseCore.xcframework.zip",
            checksum: "390086b05ff1d6cc7c9e68b3e33502428e00029e93b4d2606eefcff019956dda"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FirebaseCoreInternal.xcframework.zip",
            checksum: "e796eebe4ac3956d938c09239051a3254e8cfb0a194ac780360a12a12ed6c0bf"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FirebaseInstallations.xcframework.zip",
            checksum: "5fcf15233c53bc15268a3ee94fc3082d3019e033735afe449391cb31b710f2d0"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FirebaseMessaging.xcframework.zip",
            checksum: "3ee4c01af8080e2101308244e4c2cdd6e465683519f6ee5aead0f3fcf31f9655"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/FMDB.xcframework.zip",
            checksum: "63ec4ebe3ae749c8b9d8f349b0f179056c7d453d5f5e4eef153686e041ff7080"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "9095949c8c9848232580db94a00fb550e642ecc456a2bd58bb7ef38a527e1f56"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/GoogleAppMeasurement.xcframework.zip",
            checksum: "381f5d05cef92c2c5d3bdc48a8163c657363d7a679fbf2125dac2a94a175934e"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "fbfb4e76db82b74eb03e29dd9a9aa8b8c311b3222d44b8daf4f37cd2999ea578"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/GoogleDataTransport.xcframework.zip",
            checksum: "b8d3ab7573224b4193b34154e56674d61e8c4d5de481ff6fbcc9771ff050b84a"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/GoogleSignIn.xcframework.zip",
            checksum: "6ba362eea805c80069694a712fa52c305a8030d9b1aaf07868ed522a7053698a"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/GoogleUtilities.xcframework.zip",
            checksum: "680f781321aad3d21b69db5999d9ef47a03ca99001484cd6a8474e885b14ddec"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/GTMAppAuth.xcframework.zip",
            checksum: "8723a93536cfb62daba74fb4815011d2d8749e08b0cf735a79df4a573ddb1e7e"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/GTMSessionFetcher.xcframework.zip",
            checksum: "457454ab9ac3d2fec8564baba301277cd57d1a4ef0ffe1baf0e671bbc041ea1e"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/KakaoCommon.xcframework.zip",
            checksum: "30c18768ffbe9cd1bda0eecfdd7fe31a0b0971400f5c75528594fda4c6987b85"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/KakaoLink.xcframework.zip",
            checksum: "395d303db12069f2f0f8ecd90b49407482154716f07b0888dfa50432a65d4e14"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/KakaoMessageTemplate.xcframework.zip",
            checksum: "4e04c68b8fc115b47765e720c5d2d0678a63bfa3445315fa341e285140fca60f"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/KakaoOpenSDK.xcframework.zip",
            checksum: "77691a28aaca87fe1e0f10d356cdcd647dfdaa7c5c523f15e0e98904a8383bb9"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/Masonry.xcframework.zip",
            checksum: "c1bbf7b11a04f459a8f3af8d29aa3f882f3a06690c7fb8350d39eb31c8f7f2f6"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/nanopb.xcframework.zip",
            checksum: "f3506f090e8ff5f9fdcb1a90a15c5c7c727501a077bd094eb63a88b0f8021bf0"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/NaverThirdPartyLogin.xcframework.zip",
            checksum: "a370b1149b404a55a776b5b513dcd8d53344eed220f7985981dc72521df801af"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/onesdk_ios_ubee.xcframework.zip",
            checksum: "d7816b4ea4444effc509011f311dc57261e7c0466fc9b02f576f0faffff50b56"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "1e6536249d6c9d500799aa9207ab2d98ada707488e510d6a0a96dfddf60ecda8"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "876393b77c130ea6cbe14606d311399c9cb071249764aa49b9ce3978af4f052a"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/OnesdkBaitianFramework.xcframework.zip",
            checksum: "9c9ca4abc0ff007da7acec6665c2f9b219dfc3a548fc0410f5293ecd575a36d2"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "1866fbe0c9bee5e59d1a6fa1d4116a4d6c280ecf074d3f2eff563e4f90964b4d"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "656d54bde4716dd63be6f43243a9070f13179126ac516ab514296ab0cd625b4b"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/OnesdkSeacommon.xcframework.zip",
            checksum: "abdafd0526a73d0828e8a78ac5b50a25c16bea135ba11029ba0272eb94726789"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/OtherPartySDKFramework.xcframework.zip",
            checksum: "8076c3d7e0bd2d8208d41ab2771e815e3226c94109c12fec0c36330a3483fdc8"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/Promises.xcframework.zip",
            checksum: "2e649582bae0e77e9aa9fde1a136fe3dbb1712a6b3b755afac272ce3ad5692c3"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/RecaptchaInterop.xcframework.zip",
            checksum: "faca7bc40a65b2196d4ad634a0f3f17c0998936443b10a643522b1bf4d1765a6"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1550436/UnityUbeejoyManager.xcframework.zip",
            checksum: "05dd3f9352c47040de5aca8670e30e3f7fd7b77a41f0d13c4e6db5dae98ad7b5"
        )
    ]
)
