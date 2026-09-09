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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/AppAuth.xcframework.zip",
            checksum: "571900ab94c650e90ea7b0019527c71ea932e9faa462e233c8f39db696eae87f"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/AppCheckCore.xcframework.zip",
            checksum: "df4c15a01d5ec8639fa413cea999396e7a96e3dd838b6a43cde435e980dcce4e"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/AppsFlyerLib.xcframework.zip",
            checksum: "d4a5acaf712e3c1ff3c4ee6843e382ee4462d24690d674c68ee2c3e8abc3ab1f"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FBAEMKit.xcframework.zip",
            checksum: "8100773dbaa5ee7a28811b156b142c154a57230cf83b70acebcdfe38349aecc0"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FBLPromises.xcframework.zip",
            checksum: "8c6bccb3296f44c8676651e1523433964a708415f3802792ab0f510c1f64f1a5"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "25d6f8efa6f38462d7f39d88825d7bb1949a27efc8acc7f1be93d620bb200102"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FBSDKCoreKit.xcframework.zip",
            checksum: "04b97ee13da946c17b2127b2869384e25534266b3525cbbc7653d75caca39c2c"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FBSDKLoginKit.xcframework.zip",
            checksum: "b30b783305bba4975a641b119f6c0c6aaa80467aa4b572c892be05cbdec9b591"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FBSDKShareKit.xcframework.zip",
            checksum: "73cb589968953c0ab804d31abead931aaa1c90cb4f9e1a23637ef2629f2ab230"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FirebaseAnalytics.xcframework.zip",
            checksum: "4d24b83ce1ef40e339f40670a9461806921b4bf050cdae7112f3ff6a14aff4cf"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FirebaseCore.xcframework.zip",
            checksum: "2baf998ab8c6fad9876173eebbf830ccf6dff79489461b199f6b5b698bd3a094"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FirebaseCoreInternal.xcframework.zip",
            checksum: "01143156ed04ab60e9c0b348d17b4b666fb90631b2ecfd8895310a8ef26c63e0"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FirebaseInstallations.xcframework.zip",
            checksum: "a80bf6b16c47447e179463c341e5f73d2c8ff6b71a769c2bcf88919d377554ea"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FirebaseMessaging.xcframework.zip",
            checksum: "796857a2e0fb082bf32e025a40ebe1c113f884d3971d152f3d9ecb3d92db77f6"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/FMDB.xcframework.zip",
            checksum: "4acba934b9d7649a2b84c2ba40a87d1b849eef5bdce1b25e5e0cf19b7384148a"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "c6139e7adf5410173d73b5c6db7ec0dcd18c5bf5f0c532b5798f92669bd1b778"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/GoogleAppMeasurement.xcframework.zip",
            checksum: "23b43eb6dcc10c860c09672ade477ed94b36de9e15a88fa1ba7175546400da17"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "891191adccb64a19f3fd2865ac2df0e4dd1214a86701bd4288de609141ade069"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/GoogleDataTransport.xcframework.zip",
            checksum: "f3746707adac87f41e01de0b548ca312de2a461fd3662969dad26051cd6bfd64"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/GoogleSignIn.xcframework.zip",
            checksum: "bd646c565d1d141fd59559ea3adfda7ba2a8dfb4cedfb896092c67fd050d0bdc"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/GoogleUtilities.xcframework.zip",
            checksum: "428cc3cc4e922874035c950567d90358305286dc0e189656abeb1720a679db2c"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/GTMAppAuth.xcframework.zip",
            checksum: "988374ee93be57f79ac8d3090080b21c19fc6c4fb85e318970fab963cd68618c"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/GTMSessionFetcher.xcframework.zip",
            checksum: "aa6d6dd27e8ae62bd27a05b920488d61d2a7ec4b65093023bf34ffed1d9ceca4"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/KakaoCommon.xcframework.zip",
            checksum: "84960d49e4fc3b056209449ae74727d68cb65790ad3defc50914d4773f27e255"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/KakaoLink.xcframework.zip",
            checksum: "d30aaad74629b4c2e66f3778fe71d926dbd6a2a710487d74ead4f0e394296bb9"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/KakaoMessageTemplate.xcframework.zip",
            checksum: "2e0239991e55ff008956e692ff9fd90ce1092c6e5374a76799324e27d71e6d00"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/KakaoOpenSDK.xcframework.zip",
            checksum: "70790fcf4dc9cd1c6881aa5327af87552758a0063fa05803fdbd03ed6ade2e66"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/Masonry.xcframework.zip",
            checksum: "1b9bf8b6699c941d4ed38c36935fef5847e2007c727692289d86d7e12c77a7f1"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/nanopb.xcframework.zip",
            checksum: "b6171b02394e2824097f051dd67d6f57659f79f6b5304fa4765360dac0fa8651"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/NaverThirdPartyLogin.xcframework.zip",
            checksum: "0cf59a7017f870cb98d6196e6b9ab976e0836b6dc3e09afa8e10cae159ea6c0d"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/onesdk_ios_ubee.xcframework.zip",
            checksum: "de1475d29d74dfea07cf1c0bd3bd73512fd718d151d56b26236af1bcd06299e3"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "a33f35884fe96e27fe94bde29f06c92b044df41a49b1b7368832791d672d1d3d"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "cee9408bc851c4f2eebc718488fc9303a130ffbd1c8640c5034835816afff306"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/OnesdkBaitianFramework.xcframework.zip",
            checksum: "ba7d8e1596f39f5e7e321a0c92a20c43ecbf432f9dabdd698e0ea80add556ff1"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "76d1b21d8ff16f6e0e3f98250dbf3f82491cfbad1e278beb8bada37a64342702"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "7ac82e2a3d8fcc345012b7970cb10e20d2149328f046a586149c89d2de38e446"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/OnesdkSeacommon.xcframework.zip",
            checksum: "b8b2279f47f428a1eda8b73cc29463d4de6e0aa289a2f85a8bba1d2b26db5658"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/OtherPartySDKFramework.xcframework.zip",
            checksum: "3887d1caf9a45b0a690dd3434939240933bbf19918954302d6fd2d154f173e27"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/Promises.xcframework.zip",
            checksum: "79cf5eaccd8cd18d77fdb8be8d5f63998a686d49121af60fbe18ccf375793932"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/RecaptchaInterop.xcframework.zip",
            checksum: "d77342714524fa28172e80cb3b75791e5aeb127d1db816aad5e69419eeea95bd"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1524944/UnityUbeejoyManager.xcframework.zip",
            checksum: "67aca932256acf30064a39b50ece5fcc6c80df2d2ca41ff05a790f402116e20f"
        )
    ]
)
