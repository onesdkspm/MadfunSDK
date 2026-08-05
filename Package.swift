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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/AppAuth.xcframework.zip",
            checksum: "e3c0ca08b2628c67fc19750bec54f3bb7251cfcd55faa7fc0a5c156102e5d0c5"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/AppCheckCore.xcframework.zip",
            checksum: "37f2b0946cb97a403120c66ab690582be07aaf5c99be6544fb88b180794d0c3d"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/AppsFlyerLib.xcframework.zip",
            checksum: "1b8860e4f7159763d05c5a9f5a8bbabc50cb718e448ae5090d852e82bf173f61"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FBAEMKit.xcframework.zip",
            checksum: "2be0cb594cc37e939a30875a9a4542ac330c008588c95dbdb63d10e1c0651c72"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FBLPromises.xcframework.zip",
            checksum: "95f658e28cefacccda29ea33b217e8ce3f673d44dedd769bb626c92fef47ce5d"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "58e1dd31d69fe116247b5e04bed6b59f50cbc9a9c0c40c79cfbe5505381da48e"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FBSDKCoreKit.xcframework.zip",
            checksum: "c229f2675a0ed55717416cb320fc44278bcbcea60fafd815a93669c9d73df7e5"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FBSDKLoginKit.xcframework.zip",
            checksum: "9c2f5421e783e49e890f8bcb4c212d22b5dda5b06344b470916afbd6bc799160"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FBSDKShareKit.xcframework.zip",
            checksum: "cf8c4e41b2d70af97658781981f824a48c5e5ed1b36e45a699d7b4383849339a"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FirebaseAnalytics.xcframework.zip",
            checksum: "da425e5c24bddd73c62ca6b894beae9f3e7b724aa2bd817017e60456c425903f"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FirebaseCore.xcframework.zip",
            checksum: "88a171583d3350e31f3ce08e162ffb2cb5df4c77d753a22fa8360e1be6272011"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FirebaseCoreInternal.xcframework.zip",
            checksum: "421cd009e0deea41d531ea89fc2942a91e870fdc39d1f904c9eafef7f9067437"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FirebaseInstallations.xcframework.zip",
            checksum: "54231530d4a69f39689e77437323b9162d75af5badd9a8839909cbe92a705c36"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FirebaseMessaging.xcframework.zip",
            checksum: "970d68982ea33db39e9a1d49201b95731062f660d0237d48fc1bbd473257251a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/FMDB.xcframework.zip",
            checksum: "58c4c7a95658d7220fbeddf224ade1fb4399f85f8c444239825eee33fd8ea8a1"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "118dde0a64e4895a4d9ca7e190553322748a34cb17ccac4376243b8cf1789bd7"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/GoogleAppMeasurement.xcframework.zip",
            checksum: "279731036fd2d95940c1cb60863c06337b8c1c2594e583e2b01261f5a7da8e36"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "cd072d3c0e2a6bbce7e295211b747ad9ba434447c274466045f626fd9d717214"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/GoogleDataTransport.xcframework.zip",
            checksum: "5fc1d2e781a440ade87610d561db289df6133ba4403280c5abc108645b190a29"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/GoogleSignIn.xcframework.zip",
            checksum: "ef225f89ceb6bb689d3d02106d9773aee2d17c559f1abe43039cef1332207384"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/GoogleUtilities.xcframework.zip",
            checksum: "1f07c586a2abff1f4be438beb49c3d57918bea494261e47b9523f25a3c2a2052"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/GTMAppAuth.xcframework.zip",
            checksum: "bb3f310a7b9fa0ccb0faed6f10ffc1a296bb4e21f5066881154e20102ece6103"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/GTMSessionFetcher.xcframework.zip",
            checksum: "6fb6e3bbd558b915f37b2704c035f58032d99be74d743cdce26dffc72501dabb"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/KakaoCommon.xcframework.zip",
            checksum: "16aaf28e51eaa2155c79b7dc7308053c090b87f33a8fcdbeed91e4d784ffbfe6"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/KakaoLink.xcframework.zip",
            checksum: "cae092b0da674c22d63bba09dfc0089b00393ccab3f557307237ab4e3c1fe395"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/KakaoMessageTemplate.xcframework.zip",
            checksum: "a568e8a1cc9a208c89df6ca8f5bdd29365daa789b68d6e88de45b099f9b44606"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/KakaoOpenSDK.xcframework.zip",
            checksum: "089f7ea20f5bac14703e0543c91db5f7dd940db3aff3dc3b9e21a06470b72cdb"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/Masonry.xcframework.zip",
            checksum: "601cd5ac93fa847d2c80d02da622b6940e9044b60f7980e5352fdbffe8e64aae"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/nanopb.xcframework.zip",
            checksum: "389c0611d34fbca7eea62eb8d4a6414bff47f7588bc919247cc410ed96c0e053"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/NaverThirdPartyLogin.xcframework.zip",
            checksum: "7e698d3c754b8a8683c3a97ceba42fecb80987b1a319a0b0b33de83792672132"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/onesdk_ios_ubee.xcframework.zip",
            checksum: "c3a2257c1f7053cc66da188a17c1da8b4639a23038340d6af75ac4171f067c8a"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "c8af2565665ce900fdd232801e8606a29975af70409f608b9fb397562bac0cae"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "e82fa5a8a535b47940b2fe1b4006742c137f4eea354b7b4b24b19fb447852a43"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/OnesdkBaitianFramework.xcframework.zip",
            checksum: "51a3b2e1a776d3a4588fec31cd3764aa3352eb60edfd97be0d91c0c7b38b444d"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "2d323f2ad7628d2509d9a494d259f138174f4c3815c37411c99b218bd27e1411"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9f11c0ea3c02277ee113886cbfe7d50a1b71f130f9fbeb81781ffc3228cc95bd"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/OnesdkSeacommon.xcframework.zip",
            checksum: "0885cfc3875ac5d8189af7c8a44c9f9165eb9a9ba4c59aa81c9ec55f2b72ddd0"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/OtherPartySDKFramework.xcframework.zip",
            checksum: "6bce4e382e3f7d324ea7a9aa534f329b889580e012269bda17f9bb435d80a144"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/Promises.xcframework.zip",
            checksum: "57d45e703cac68e3fffd48a0adf7f6bf53370a3d1805b1072dce5d486eba0591"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/RecaptchaInterop.xcframework.zip",
            checksum: "2831be0055a4a155f27bd149cf71910b5bb895625fc1474c1f42adff8c2e774f"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.0-dev-1500851/UnityUbeejoyManager.xcframework.zip",
            checksum: "e5817d67e56e4e8c5f64f6028b7cd2ce796ff8b85ea713c4a0241ac600f4bf90"
        )
    ]
)
