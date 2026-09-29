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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/AppAuth.xcframework.zip",
            checksum: "5d6e0ba12504a8025e649908d2bab6547927d33b1023185146e625794a4e4a86"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/AppCheckCore.xcframework.zip",
            checksum: "5fbd0d59547fe3975836f3c55f6debd9212749707c9d24a31711549e9e4949d8"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/AppsFlyerLib.xcframework.zip",
            checksum: "2fd29fc8913cdbfc19f91ff6928baab5b75f168f6f393d79d974a375214c145a"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FBAEMKit.xcframework.zip",
            checksum: "e576d343062126acac1d6938912e6ed1ee886ebb849db8a88ce8ef5d0581bdc0"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FBLPromises.xcframework.zip",
            checksum: "93a50b60cd550f2fd4f69eb88be7ca6e19cc63dc3c16dac936eee4252a5463f3"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "bc121d5b9b601abf65e31923ca798b708e50e60db900d74b0a3e637e908f3603"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FBSDKCoreKit.xcframework.zip",
            checksum: "09826c84480abe50a969c106601e5cb6cde3bf3e9f132e450dfb1354ac6b9d26"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FBSDKLoginKit.xcframework.zip",
            checksum: "75b369a7289d879a501bc6f1b41182d042a6ad0cdc8dbf1a2e5b7735633869c8"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FBSDKShareKit.xcframework.zip",
            checksum: "5e3c046f88a93996b590acd3037d6bdc652a3e57e4b7465f22e402f4cdee50e3"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FirebaseAnalytics.xcframework.zip",
            checksum: "4d7c2dc0b1a02f45323d3cd982bdb778e0401b1f4ae243ec65cf1717006f3ac8"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FirebaseCore.xcframework.zip",
            checksum: "e92af0d52366c5e51df178083511256e91ed759a190a2f382f62016cd6baec05"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FirebaseCoreInternal.xcframework.zip",
            checksum: "753a93c58f4fb5c7f8ee76fbcb0bc55c6d9fa6e7510de5f92aa8545b49b5dc99"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FirebaseInstallations.xcframework.zip",
            checksum: "d0a1dfcd6e9508aeb4e92fbe150278bb14e56fb4cdd526b06e8fb604c46dccb1"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FirebaseMessaging.xcframework.zip",
            checksum: "98c2a58f356cf5da73104d2f4db96d63ef5e26ca33c4581ce34f586026c41478"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/FMDB.xcframework.zip",
            checksum: "d0c9757145512f36d8d6dcc0a2ebf1e4232c30b1bd63d4beb95f93615c0914f1"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "2fd72f034ef07a6d2f25106dd7191362c25593e51024f5d2af2d63c5a2127308"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/GoogleAppMeasurement.xcframework.zip",
            checksum: "aae157a4bef43d0d27398f36aa38cd9786875a0bbfaf156c21e8b3c50719edcb"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "72607c0b46e649fe75a56343e87a7d900a8b060740dcd28c9fa1179f46b93608"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/GoogleDataTransport.xcframework.zip",
            checksum: "22e268b88449bba60a04df452877bacf81605d6271706c8960bc71e4478999ec"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/GoogleSignIn.xcframework.zip",
            checksum: "63d67f92b545f19e7610caf9c17dfcad64f5c1c967110d9c4602b4b8a34d4df4"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/GoogleUtilities.xcframework.zip",
            checksum: "5215218d123c01f0fe468ec72a3dbad250c6ff3ff884d521c3f167b5be7e62fa"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/GTMAppAuth.xcframework.zip",
            checksum: "c404eab3d87541a1fddc566019cef2ef96fa01d9d331db9dc32d80f53b25170d"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/GTMSessionFetcher.xcframework.zip",
            checksum: "ae9a0d6c754326d3704831bc89aea57b6ccc81a5381419821fc7e7ec34d45562"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/KakaoCommon.xcframework.zip",
            checksum: "244a99f2ffc0192ada14091952e461fc0151557a7911569c826c50ddc1d80896"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/KakaoLink.xcframework.zip",
            checksum: "86af2a12b06f36b9529dfbbd1247f156d7c064cc435661581cb8ce43bf3f1dd1"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/KakaoMessageTemplate.xcframework.zip",
            checksum: "8fbee19b232ff1c0b797e59996360f565975a665699bca586eec7a21f47ae5aa"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/KakaoOpenSDK.xcframework.zip",
            checksum: "09103162a10d8aa0a0aac7f704af59e25b23bac32c6e978f25a4fbe480deca86"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/Masonry.xcframework.zip",
            checksum: "cbaed499beed70b0707899deddf62833936e0fe7e020460690059d4f5ffd5f67"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/nanopb.xcframework.zip",
            checksum: "91715f9c255193d3fb230c985111aa8c8287156a4df8afc16ee1b714a32baa56"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/NaverThirdPartyLogin.xcframework.zip",
            checksum: "021e174aed849a92ce9e686fa7099f1806ea6c059ccdc87100857a644ed59e6d"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/onesdk_ios_ubee.xcframework.zip",
            checksum: "e10b09970c32ce65a8edbd3975ef7432e67ec83caa8626464aa00e0c903004bc"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "2091fb9968f4dfd04d56132283ca63ba1835c884b1cc002661075471ad69c7ec"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "b7797495be0cd688c8b8d34491fe1947c2792ea2ff92bad08b61f32ead847bf5"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/OnesdkBaitianFramework.xcframework.zip",
            checksum: "a144d350d3ad1f42b8c679eb0a367e7f39255c82059ba46f60317a784474a99f"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "1e5ca95c06f0985664f9e619799b7e8f8ffa652767ffaba3f1794fa232c77e7a"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "e88d22d2da9a36b4fa5553161aef38c1dbf6edd57124b9ff034977351fc9d533"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/OnesdkSeacommon.xcframework.zip",
            checksum: "c8d53236df5921bbf3c4a3fcaf35f8174f0b0374e3d777eb2a74103076ac2448"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/OtherPartySDKFramework.xcframework.zip",
            checksum: "f64ab7b3b0174a3ace0a82cb1d23c346f4446084db8f6c1fc6812a38fac2c828"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/Promises.xcframework.zip",
            checksum: "7b70a0d480634c3f4821739e5a267741cf16aedd66bdbc3cee3692e6b8624d0e"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/RecaptchaInterop.xcframework.zip",
            checksum: "9aa58da90648e255a95e89fc0767893a5891fd4bf3717de6ba3d481f5a468fcc"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1538781/UnityUbeejoyManager.xcframework.zip",
            checksum: "9e5923a8ec847412bcf125c038e00e6f38771a59d8e97b4e85c92dcc7551dd54"
        )
    ]
)
