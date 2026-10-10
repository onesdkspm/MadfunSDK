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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/AppAuth.xcframework.zip",
            checksum: "02062253b80f132ffddf1fee7b628b9915ccc9fae3c9217b542c7a618fc7bef4"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/AppCheckCore.xcframework.zip",
            checksum: "5d63f1b0af70cd1b5c84f2583f40847394b1ad649de7475f17619a404a0447d8"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/AppsFlyerLib.xcframework.zip",
            checksum: "5e5fcd3bd2482ac9886dbb9f2fe32c98a25698ac178236fe55bbf35e46a3eaf4"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FBAEMKit.xcframework.zip",
            checksum: "5c44e7d48492643964966ac30c5a91269c4ad45fa1e026e40ea27ddd0281feae"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FBLPromises.xcframework.zip",
            checksum: "b51f3e5317c7ed269d05e09387692a04b8550ad791a359de6775c8c1402af23d"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "412a0f3556aa9150264c02e8d81b7a1bd7c4f47ca4e479a921b192bb85f09c3d"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FBSDKCoreKit.xcframework.zip",
            checksum: "37ee6883389f0864d930f7ccb27db4ef0b131f63b0f34e1a798db90778f3a325"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FBSDKLoginKit.xcframework.zip",
            checksum: "d90f2f5f41211c63580449c259b37bf2a1d013449f6732df8f1ee6d2584fbe83"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FBSDKShareKit.xcframework.zip",
            checksum: "4e298ca3e31968697b3cae4b3ef324cd2ba89c85562e337136c55a1d8c7e9568"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FirebaseAnalytics.xcframework.zip",
            checksum: "6ab4392b782eebb70218224f9ff1a2cef3fceebc84085053f260db77dea318e7"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FirebaseCore.xcframework.zip",
            checksum: "df3594ecffd65157d365505770b78dbe4aac92de0e232cd7a17089d87e463752"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FirebaseCoreInternal.xcframework.zip",
            checksum: "963f62c5effe69813b9132807bc32a9a5adf6c5737025d4104e8977469e99d60"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FirebaseInstallations.xcframework.zip",
            checksum: "ce09be0d3693a208c586eae005c2a50a97048dff11f3ddb2bb4110fab8fb057f"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FirebaseMessaging.xcframework.zip",
            checksum: "3699fabcd98cebecaa682855739c0aff07c42fd1d6d89d2e6f4883771ca11f24"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/FMDB.xcframework.zip",
            checksum: "720d78a918c5ae9b9f01b25cad08bec2e2b0a1821cf4e2c5893f53db735806d3"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "241ce26a2939ec3a80f5cb3f2ec3f9c648408ca798056e5cb21d18045ad66d2d"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/GoogleAppMeasurement.xcframework.zip",
            checksum: "6213a955eb7689709be375623339d9e4310f421e63112672a831a56569ad56c4"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "7237f811a124da7ab5161060c37491344a8bf5f06fae9bc3ac76faa524ffd4b5"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/GoogleDataTransport.xcframework.zip",
            checksum: "41a55c1348a16a877ce54dad5513df27e65bfad95f04c2f0bfa56d4989c6caab"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/GoogleSignIn.xcframework.zip",
            checksum: "986dfb6c9b488e330825eb3a77ad21b9b682667e4b8b3b20cf1fd8b07160c833"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/GoogleUtilities.xcframework.zip",
            checksum: "fc52ef03a34c50edd80ac915c71aef7e81613e738f80c1457683cdb50efe0021"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/GTMAppAuth.xcframework.zip",
            checksum: "5e99c7cf9ec28432c9df289b582edb6ec98bc65c22557e08e529c8cae99c1ac7"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/GTMSessionFetcher.xcframework.zip",
            checksum: "5c6fab6f71622e3b0149a827f9dd9f56a39bb16ee48dcb5b461a52e0f17895c3"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/KakaoCommon.xcframework.zip",
            checksum: "a99ae0ba31886202ee365bc54105ad5e655c3540ecb47b81f902911748b64bb7"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/KakaoLink.xcframework.zip",
            checksum: "df7e697af4f74dded377c648f22af009775555f318b4efb8d99e3b54799faaa3"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/KakaoMessageTemplate.xcframework.zip",
            checksum: "4163a344f5e7477f5ca7bac1d941166d153e75b03cfd22275714c2f744d3f8ab"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/KakaoOpenSDK.xcframework.zip",
            checksum: "72d07c3ca1c5cebb58d9193f3484d9b758b89ae743522b81cc372881470676f7"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/Masonry.xcframework.zip",
            checksum: "d3cfd5226fead03c98db222e62cde3f3ded8ab3e274c139484c1414c86e10fda"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/nanopb.xcframework.zip",
            checksum: "f5a88f7ae3384c886e988a884b402f73b212b7a27c9994701b85a6e82e3a24cd"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/NaverThirdPartyLogin.xcframework.zip",
            checksum: "a1488269281ac608cdb58f325de64dad2255bd1b3f2d303f1e24bb923b0bf36a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/onesdk_ios_ubee.xcframework.zip",
            checksum: "23e56d7e2f220c9c9824cc19351f316e3327c3c48e2275684b927f8537340dba"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "d09a9f85f5c3e66fa0b51a079fb1d0015314bb7253817ae15bed44f11238fcde"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "29f920dfe74f414fe9d22d1a532e09c4fd0d24a6953eb2735622b756152b7a99"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/OnesdkBaitianFramework.xcframework.zip",
            checksum: "f6d885d8d6ced9d44849861c0541eceaa35022be45febb4f7053041659a04de9"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "2c067fd8e14f5c85db83141b83c5aa6efaa950da47841d01b19ca0c5fcf68e70"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "24e3cee6b02d290b5321d17fa70c505e38f9d022f41009ee53c0ae6c3ebca48d"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/OnesdkSeacommon.xcframework.zip",
            checksum: "9addda480ca4afca07479ab0267b0aaf66cddc9b6bec159e61b020be1f678737"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/OtherPartySDKFramework.xcframework.zip",
            checksum: "dbb92b51bad9613dc87d60220bf55d05b61c857561e9b44a0dfa30190abe1028"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/Promises.xcframework.zip",
            checksum: "35958b90df7c5b8b72abd70bb077ce1b629c3d7db9841a69fea64d79b23e673a"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/RecaptchaInterop.xcframework.zip",
            checksum: "3577f4f5f65c1fa961464ddd23e70256a4d5cce97530d3d9875118c1c4ab6509"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1542820/UnityUbeejoyManager.xcframework.zip",
            checksum: "2dc93fb33f1ebbb0ae01e7cf822a72d68f1548d7230b89671612168e339c82a6"
        )
    ]
)
