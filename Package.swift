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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/AppAuth.xcframework.zip",
            checksum: "9d3ee748a4359c9000ddd793da4a45afff34df01737cbb2a0e3c5fe61b15f0a7"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/AppCheckCore.xcframework.zip",
            checksum: "9b59e5b53efd60f8eae9010e550a4593aa8f9583b9a5f03b79ab3258bc0ac861"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/AppsFlyerLib.xcframework.zip",
            checksum: "d8d76e311103c00aaef1a138da127ed3968f7e1a0b6262584a5fdf4899ec6af5"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FBAEMKit.xcframework.zip",
            checksum: "2d450cc1b6f6ba26d93564e3c9e03b0bdad84970a9e5ee543718584676d2f62e"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FBLPromises.xcframework.zip",
            checksum: "cbf9c93814c47ef986d24d665724db810211fa8c80405f18e5e8b5352457b9f0"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "573f2cda99cfe23af591da963fca625e4b10d9be05b95cd393e9f4a1eb5b6c31"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FBSDKCoreKit.xcframework.zip",
            checksum: "58da373e539b38d90945f72ad0a882653bcaac87cde1c1e61ff3b88c18bf2e2c"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FBSDKLoginKit.xcframework.zip",
            checksum: "b6ba8c5f008d0c54334cecf7727e3d43db60e25289986e8253c0a65623a10cf2"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FBSDKShareKit.xcframework.zip",
            checksum: "662870c3a833a5dace94d7bf82dc0546710001724cf69f5401abb88578d5ace7"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FirebaseAnalytics.xcframework.zip",
            checksum: "32b0ea974dba928a5658f71e4f1b6264be3edf931819f5e63131099fdc90a203"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FirebaseCore.xcframework.zip",
            checksum: "d322536e3bd1adf41c251aee21c75315352a4a5e21735266d91fea96b4125dca"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FirebaseCoreInternal.xcframework.zip",
            checksum: "7bad717b13b2caee0668adf3168acec6817967a2d02320074b8f0f4cf7711e05"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FirebaseInstallations.xcframework.zip",
            checksum: "3a155c0968e7b91e46ab3eed1f100d4cd880c55aba13b1c404d8fd455d04eda8"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FirebaseMessaging.xcframework.zip",
            checksum: "c93efaee2cf4c01c2147af3c9fb2b403cdc6de9a71510e94cace139bb7a4b297"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/FMDB.xcframework.zip",
            checksum: "9a16d3351d2d7ee43d7acf9ea5068b3351273a345576010a2befdedf120c94cd"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "56faaf5a0683f05c5603d8cce71c6f351bbc343ebf1e77e82ddca91ba87524c5"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/GoogleAppMeasurement.xcframework.zip",
            checksum: "1416467f06afc671adcb16725a840ab00f8c49907ede4145656280e45253f472"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "a460e3ca2f7a0b6f7c54aea328c0fade532a9730962b1a5f6ec08f261eea093e"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/GoogleDataTransport.xcframework.zip",
            checksum: "9bdb4472bf2a26b1db194445cd70e1096f4eb2f931460d58a2c3265207019f42"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/GoogleSignIn.xcframework.zip",
            checksum: "fbdf5918f33d6a913265c046e1ddc9b35305ea2320be681bb8635e969621a9f3"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/GoogleUtilities.xcframework.zip",
            checksum: "f9c4046eb7002c20d25f1b03cf0024d5856295bf7f81ff681d66bda0c60a0da2"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/GTMAppAuth.xcframework.zip",
            checksum: "acede61b28dc9ff6938b2d19a44c722244c8626a30b53d188fb14792a75d0f54"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/GTMSessionFetcher.xcframework.zip",
            checksum: "867bfe4bfa4bee09724617394252e712274f068726e6f0305263866d26c73a5c"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/KakaoCommon.xcframework.zip",
            checksum: "5345fdc318a839e14629f83dc2e1cf26824f34ab44b2f792b8b4d50ca46f0d67"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/KakaoLink.xcframework.zip",
            checksum: "d4b4b1a90be3332967977ee32039fb4aafa488e76627d86b89a74e66994b82c5"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/KakaoMessageTemplate.xcframework.zip",
            checksum: "bd761e1a19a4988ce1298a96da946bfbeb2c3ce643724eb0b276b0305d7139d7"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/KakaoOpenSDK.xcframework.zip",
            checksum: "34c13f019af89407340d4a64a03d64a944adedb53da3617d43598f62a23c30b3"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/Masonry.xcframework.zip",
            checksum: "5f590a4548c30305adf6217cdb21ae4dc6662aa6324c31b217058709a8c741f0"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/nanopb.xcframework.zip",
            checksum: "3f416e81aa6b6ef272587d86b2894379a727f9143f1e21b35623565d15abe017"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/NaverThirdPartyLogin.xcframework.zip",
            checksum: "df5f030e8eb6f4ce4f45f3dfb2a210eb8dba86f71088314c49342f8dd901dbc4"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/onesdk_ios_ubee.xcframework.zip",
            checksum: "8215a47cc954571d23cd8c2dbcd1920624d19f1bf48a3abc68fa6cf0ebedb2f0"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "4d1d471d712295b0e209ea2f0dd61eebb00f422a1b33da4c85f430a5f392b388"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "d21ba9dd0826f1a8e320b8f7c6fdef65d5af544a163e0b7be592532fbab5be1b"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/OnesdkBaitianFramework.xcframework.zip",
            checksum: "1856f0d62779047f98ac50b1e4be286019fae0bb73008b6ee96c44cdf45615ef"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "90d0e890861ab697b8d0ba6c753ab6da38d0d1acb1dab7b811a412b484b6b8ed"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "7267838c9a8ad1ea293bb967d472a91caa56c635b3f8f626ea7705031cbb4879"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/OnesdkSeacommon.xcframework.zip",
            checksum: "e4bf2ba2b8dba4a3a4f6f4d0897b582c3afee373b8d5156fb79950d8a451e5b1"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/OtherPartySDKFramework.xcframework.zip",
            checksum: "f60db7e7b7a24a20320874323b1bc59ad236ec60e044d2efb5efcd159183ad7b"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/Promises.xcframework.zip",
            checksum: "3648d1d0f9d0a24e295f326f6a60e6aaf5593f460f3905de36b5c8d62a709286"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/RecaptchaInterop.xcframework.zip",
            checksum: "c7b64ef368fd6d9f596e97d71a9c55ba1a72e428e40824400fa85048b4231b3b"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1505137/UnityUbeejoyManager.xcframework.zip",
            checksum: "b69d96938d2c5632781c96b15761aa77f6e545f0eaeffc337584c879c725e320"
        )
    ]
)
