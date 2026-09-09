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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/AppAuth.xcframework.zip",
            checksum: "c89f3b42c812fe8d4719052b4545e828accbe2b0ea378cb30b6ba536ee85fdab"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/AppCheckCore.xcframework.zip",
            checksum: "9a96c73d6807b856fc84220ce8f0cd6e4b9b535bcc18d37da657755af572be19"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/AppsFlyerLib.xcframework.zip",
            checksum: "bec7aa4e12493dde87ce18b6b272e90e175096fafc18f2eb43099e2abe99a9d5"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FBAEMKit.xcframework.zip",
            checksum: "04c8834c275ad015447dd6e48eb9e6352a52d67127ad3a7d83d2921573c7abe3"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FBLPromises.xcframework.zip",
            checksum: "f3fbf75b86291a7458bafe62439755c946117c256a6863341d21edf0e085d246"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "9d40f498e68c7baae45ce6e681afb782d64f7137fd16b4011089d6543ab317ef"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FBSDKCoreKit.xcframework.zip",
            checksum: "661f715a5568aa56b125a13bf1ae36f9649f9b9b9e9c51c11074db1126ff654a"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FBSDKLoginKit.xcframework.zip",
            checksum: "42e91f63c22d5dd1649e1de97e17f71f831ec6b4e31bec5293649df2071f9bb5"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FBSDKShareKit.xcframework.zip",
            checksum: "94a8d8f4973c80b87cb5528878e8a0388980b706612a7e48b947e33a3d64591a"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FirebaseAnalytics.xcframework.zip",
            checksum: "0dedb0a13ec6304bf88c654b8e381a02faa9ba77f462e50805c3678fb4b82303"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FirebaseCore.xcframework.zip",
            checksum: "44caca1b4d33a9982bbdadd20a763c0e0b54135b92558dc183b69d9f6cbdcd0b"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FirebaseCoreInternal.xcframework.zip",
            checksum: "ae87084e86ccc7dc5e719206a80b0962c0808953d924ec6968cad9c8b3eb6608"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FirebaseInstallations.xcframework.zip",
            checksum: "19b7330e82a671d88f316aeb8add69b575569d1778ad0ac46856c44d174eee17"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FirebaseMessaging.xcframework.zip",
            checksum: "e612f95de4c0bcf3cda5b5bf106af211f4578ad5c65f26ae99f4424d5f755f7c"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/FMDB.xcframework.zip",
            checksum: "5b9330732f2d8b69cae22eab0f5aad426fad7782d48ee118104e7ea7e0adc142"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "0c92ba09208c780c8107ea3907340fc2c7040e682b044d1990c7e0779e993566"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/GoogleAppMeasurement.xcframework.zip",
            checksum: "232c59f53e1c0086fbf3abe992f0a4051ed66443349a82b0fc4c170c44aa2784"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "b7f63e23a1370349247c35f07c48c5f1506ccbe0de2bb7ca828b755530e10195"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/GoogleDataTransport.xcframework.zip",
            checksum: "9d4b3bc18bb6bcafdc220937ef088b2ecc0fb7caa8bfe665545da7662e09b189"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/GoogleSignIn.xcframework.zip",
            checksum: "0bc74573c503acaf58921fd039781f63d7902593e63e9b0e32c17d5175d58b80"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/GoogleUtilities.xcframework.zip",
            checksum: "366b37b93343990aef81a3256cccf071662e1deb0c36ac2e17773611d694d9b0"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/GTMAppAuth.xcframework.zip",
            checksum: "a514bc79f02cbaac84745543dcfe72c8c343c072ef4253e4f28d004f602e8cd7"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/GTMSessionFetcher.xcframework.zip",
            checksum: "f266406954b637e10270cd2dccfd829dbcaedf69ae9509d430da268cbb6b9bf1"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/KakaoCommon.xcframework.zip",
            checksum: "0f5a09a6c552a48e3bdbad1b3de652c9d68b380a38988d7c77d40d2619c6199f"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/KakaoLink.xcframework.zip",
            checksum: "aee0b03eddf98fc26b207915e7b8cc19fba77589ac25d72d9cb3b9371644fe3a"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/KakaoMessageTemplate.xcframework.zip",
            checksum: "edaaca31457f3ff653abecb44b734eb09f9db95b2c24baf740f836b3993ee2a6"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/KakaoOpenSDK.xcframework.zip",
            checksum: "d5ba7cfe484315b47befa12000369be8335b2eec0ca6471ff934cc380d09edd5"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/Masonry.xcframework.zip",
            checksum: "573249c49bcc460bed91bab04f37d415b60220418b6fa8ce6e64e06105ba35c9"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/nanopb.xcframework.zip",
            checksum: "a6bc80731c9c6dc96e2d6ec12db2c5b5fe26077e7d9f90535e751e5e00d1efee"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/NaverThirdPartyLogin.xcframework.zip",
            checksum: "85bc71e4368cb3b6cfba934c18f3792f7072acaef4f70b29a0cdb30c7f10306d"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/onesdk_ios_ubee.xcframework.zip",
            checksum: "6f271258f76fc6be2da19948f01f188c64c79149f8e6b67fc84bd05a7c6d9802"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "0ee9827b64b723b79c26cd44297eaf4b1101afa70e697872f051b96a4cbc9429"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "29a5aa92eabbfaee1814d45dade6c71b15a54f6af06c124b1672cd1465d39205"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/OnesdkBaitianFramework.xcframework.zip",
            checksum: "b3dde76cb1927e465ffe4114db2f887e76c40af839834e7c0a228932a9ab1603"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "3d1ef925b249d222674fa31f3b14853777cf551412c4da07f7e20aae89090832"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "2632d66d22c574f2aee9390c73a4254eaf7f58a362c118ce818ea284eeaad945"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/OnesdkSeacommon.xcframework.zip",
            checksum: "108aa0bf9ef73d138eb426f498d716d44e34cd409271b311f967cf4f1f44a101"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/OtherPartySDKFramework.xcframework.zip",
            checksum: "c118c7cfbaca17b042fbf49763a95662a9cacc49c67c71695426545ff4cd785c"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/Promises.xcframework.zip",
            checksum: "f1ad5c83e98b36e405ae9ca6cfd8fa7596f6b9317b66474be3d106731fd44a29"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/RecaptchaInterop.xcframework.zip",
            checksum: "1e88ca7247b99354f76a0bf7e7c6fd304d3ef348d973297068f890deb8dd2fdf"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1525002/UnityUbeejoyManager.xcframework.zip",
            checksum: "cb3f5e12a0dfa17b983e10063438009f0dffc03441b36188d6e4e3b84e6c3d3e"
        )
    ]
)
