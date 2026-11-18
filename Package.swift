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
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", from: "2.0.4"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/AppAuth.xcframework.zip",
            checksum: "246d0ebf455871531e34077998a901c2beab658243da6dfe2ecb1df9418edb26"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/AppCheckCore.xcframework.zip",
            checksum: "e315297742ba02a493c08d44020ef348c6c473fca4d647a30fd6bca8c4315ec5"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/AppsFlyerLib.xcframework.zip",
            checksum: "34e7d4cb7ad538cb3b6e222235f7162a32772b7960be41866b66d7b5435dbfc7"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FBAEMKit.xcframework.zip",
            checksum: "10cf8da864b2811f79a328d2ff48ab42faf6b97ad522734b2e77fb70d4695b55"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FBLPromises.xcframework.zip",
            checksum: "f93d8c69b016a2a75f7e960f96908ce5e226c5eda40490b239555ad57a1280c8"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "de1728d9c00a6f0050b802bdbdd39ac5f39b22f70b05e81fb1d933ad873f8b9e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FBSDKCoreKit.xcframework.zip",
            checksum: "d99eaa6b23440bcb63a56693eb4231c0eb1977e7b8d472d215543250c4f3ee6e"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FBSDKLoginKit.xcframework.zip",
            checksum: "cd98275362f2d3af7ad89092f81991fde54e44e4d7d7c632a0dfcf0edfc9efe1"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FBSDKShareKit.xcframework.zip",
            checksum: "2735fd53235524e1c94b8df17ba439ea5dbafed033ac5e72aed408dc30dc65ca"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FirebaseAnalytics.xcframework.zip",
            checksum: "eb7bbada6ed1dc5366f9247b588cde823916c747859e2bd2db573f88206a300b"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FirebaseCore.xcframework.zip",
            checksum: "f9f3e3d3efcaf84cadfc7b4c6a0f8da402946a7fae8bdebbd2a4e15a2474d20f"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FirebaseCoreInternal.xcframework.zip",
            checksum: "f42d82aef245d75062ae896853eb782fd68423bdd28ccf07ba026b1671c64d66"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FirebaseInstallations.xcframework.zip",
            checksum: "143e60026a6b600f1ff67f4ef72e151d8a4b1f48aacc0e469612446ecbeff794"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FirebaseMessaging.xcframework.zip",
            checksum: "da0651dc6bd4ee691c667cf481181e388a39c2b3ef0e5d1936c949a0fb819400"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/FMDB.xcframework.zip",
            checksum: "1444c196f536e4981dec256aa865af3f163c43164f6596c74dc9714df02b63c5"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "5539ebb552da78cfc0e85548359edd79a9a8baa480f1d4d05d986e16ecd5c284"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/GoogleAppMeasurement.xcframework.zip",
            checksum: "5cd874e09373e0838e00610c137ad23c4baad9668686e61ba979081449f8c005"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "56bea5543dac4f4175060e78d5c4a1a08e06e6839e5772283fe48a4f6de0422e"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/GoogleDataTransport.xcframework.zip",
            checksum: "9bdb3052a118b584fc2060a62d39bdfaa3753a0f8c14395a26afd6f9bf907434"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/GoogleSignIn.xcframework.zip",
            checksum: "73153e899ba335cfaa4fc8722d27d0605f2622998f6117fab882926587c3a26a"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/GoogleUtilities.xcframework.zip",
            checksum: "32b2c27a914b0cdd0788bb8b651a4387015724898afdecdf5cfff1561ee8fc9a"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/GTMAppAuth.xcframework.zip",
            checksum: "857ef05972f15f1d17b13284da1011cf9f38d93efb083f892c5dd61464ba39af"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/GTMSessionFetcher.xcframework.zip",
            checksum: "244b638b51a6f654847cf875fbe6cc613ed1547a9187c6b5160ad2fc61804a5e"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/KakaoCommon.xcframework.zip",
            checksum: "f7d5e70e0f13ab3a6ae96fe7af5d3851274499153a0ced73a0a012c741c595ae"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/KakaoLink.xcframework.zip",
            checksum: "c5488c706ad0fe180319244acf8c730d116c23250e1f102dd17f1f9e9cdcda63"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/KakaoMessageTemplate.xcframework.zip",
            checksum: "f75051e337bc17d40fa551adeabba81071772aa9bfa84af85e2ec1a1f10c38e9"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/KakaoOpenSDK.xcframework.zip",
            checksum: "54916ba1c657cf29dba01b089d4da9079f78c50aee5454b143a593cdbdce0a4d"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/Masonry.xcframework.zip",
            checksum: "fc95d49497f7104e561f28cd38d09473281fc012f502c1363de2a62c15e4f025"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/nanopb.xcframework.zip",
            checksum: "0f49ea27a8a0440eae117ab1c5e868a1343f18ed65166e67b7b2161a2679defb"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/NaverThirdPartyLogin.xcframework.zip",
            checksum: "b65a668caf5115a14b0296ee7bef9a4f899db0c9b92abb445ead5ed117eaec97"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/onesdk_ios_ubee.xcframework.zip",
            checksum: "6204a2e307c772f8c4f8a54f0e2284e0618a7edcac25470571dc6906e27864df"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "679584d766dac91228f4f995c1981c5245bc26ca879ee6c1ac02660696a35e3f"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "0e3f9904ef5577426bed3c5115e54e6a230035394da69561e9435845390fcdd0"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/OnesdkBaitianFramework.xcframework.zip",
            checksum: "f35c4eba8f8e091629f4e61f3fee7a7706fad2f094ca45d1268a9ea5e3134543"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "a4219676fe0f099492a301259fd86576206f778f7d1ad7f887addbbc88bd674d"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "5ce8d2ae027f1d0e24f7a01f1a80d6106d2be6d2df69259550801227fc6b584c"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/OnesdkSeacommon.xcframework.zip",
            checksum: "3a4763717e1ea2099be4043f91b002f46bed54bf66495491531352353541b1dd"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/OtherPartySDKFramework.xcframework.zip",
            checksum: "c3d5a06fe8f51c2f266502060bdfe832266d449aee138d92074bc02c087ca1ad"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/Promises.xcframework.zip",
            checksum: "deb7e2b67a588afc17656dd9a0c45200f6d38219f4c448c5e7ffe92f00861587"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/RecaptchaInterop.xcframework.zip",
            checksum: "9131a6dc8e521a39d335bfe973a8c1a880067c7311244f39ca0d96dfe4d8a9df"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.3-dev-1569995/UnityUbeejoyManager.xcframework.zip",
            checksum: "acb1e32816bda44dea857bfd89d617c57f9852f7e93cde160540930d56e049f5"
        )
    ]
)
