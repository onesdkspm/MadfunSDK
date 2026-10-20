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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/AppAuth.xcframework.zip",
            checksum: "4c1ddbe0352402d669a85a91f4b3b2e5c8ed7b27e304133364157040de8dff8c"
        ),
        .binaryTarget(
            name: "AppCheckCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/AppCheckCore.xcframework.zip",
            checksum: "f8c273eba572ad12f9a7ef4007080d840c37091ed2a2f287dcbd314acc845bcc"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/AppsFlyerLib.xcframework.zip",
            checksum: "823d699ef99bca7b1b1d5cb9e57b4ad55f6dd5da72c207cd936aff6c09f3cbda"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FBAEMKit.xcframework.zip",
            checksum: "f0711d5679459ba7c20bb32f55404ed98ffc43f8c64e2499183d6516de93b02c"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FBLPromises.xcframework.zip",
            checksum: "fe2cb811c6d6532aa4a5642bcf67bab25cd2cb7cf17e1070995258432b8e3e99"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FBSDKCoreKit_Basics.xcframework.zip",
            checksum: "2041b5cea2dc84fdb2def3815b0047509c52299c73a6ed0d2873f70404743108"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FBSDKCoreKit.xcframework.zip",
            checksum: "ed8a0c7510ae959f0d94c3844f0ee0bf3f9decef45591a71eaad30103b8d74d1"
        ),
        .binaryTarget(
            name: "FBSDKLoginKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FBSDKLoginKit.xcframework.zip",
            checksum: "af820df1e3e4b2f700435c59950b2f6f90224d9713f738cb496264e7b89efd57"
        ),
        .binaryTarget(
            name: "FBSDKShareKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FBSDKShareKit.xcframework.zip",
            checksum: "86fee8d6dc401b5c322457c853bccc9572fbfcee0df9895362d5eb80d058355c"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FirebaseAnalytics.xcframework.zip",
            checksum: "5ab9a0590a9b4c8c8be3ec04f6bc42d16d6f6902f3a4b7333a301f1de955cc7a"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FirebaseCore.xcframework.zip",
            checksum: "5dc6dc668e1b617ae200ce43044c5e12c7afe215c5e6e678bbf4d9e19ab78188"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FirebaseCoreInternal.xcframework.zip",
            checksum: "214864e9aed4d77063968d6e49a994805739bfa0e76c31a37131cf1723f7a333"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FirebaseInstallations.xcframework.zip",
            checksum: "5c620b60c5469df4bd876982a81746591b198ca218c3e50a9855efe41b1d08da"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FirebaseMessaging.xcframework.zip",
            checksum: "0c140b49292184fbdb5543e69aea7dfddab347a6351699fbf27df747eb5e3bf8"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/FMDB.xcframework.zip",
            checksum: "d6b32edc5d194ea09ff080cafd1ad9dc65473845f0c2b0476c8fc2a4f5c6eff6"
        ),
        .binaryTarget(
            name: "GoogleAdsOnDeviceConversion",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/GoogleAdsOnDeviceConversion.xcframework.zip",
            checksum: "4bef9acb2adcf77df7389a0a07ecea5d98a37fc80808e23a96e718e85470b455"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/GoogleAppMeasurement.xcframework.zip",
            checksum: "33d4f916ce850b3a5155f30769c4c4a8e104cd2b50d4998a5d335244c6ec319b"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/GoogleAppMeasurementIdentitySupport.xcframework.zip",
            checksum: "17030b1a79922de6b112904a190fc3c76a425e52e976c010ea9d0bed6e01ddff"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/GoogleDataTransport.xcframework.zip",
            checksum: "9ec8a1ef797fd1d8b34c7a6a03fbdf249f3bba722054648edc815cc43d5a4497"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/GoogleSignIn.xcframework.zip",
            checksum: "67bdd3544401a978ae132e57087f1885aeec2cc159f8694a88a2c1f9b40845c9"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/GoogleUtilities.xcframework.zip",
            checksum: "785bac235450881e96a5cf0508e34e1211d12de74091e38f69cc32317af0148b"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/GTMAppAuth.xcframework.zip",
            checksum: "452b29daceab5e94314d5b0b0e53770961b4d1b7a5a0f03a02d96ea178ab35c9"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/GTMSessionFetcher.xcframework.zip",
            checksum: "21676d2781b49c71d714644b2c71bea026e72b6db3e8eb56f0e29b8123fb1b15"
        ),
        .binaryTarget(
            name: "KakaoCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/KakaoCommon.xcframework.zip",
            checksum: "9aa4b3a3d919711bf8309553477d92346758e0b6e72196685b7a4aef4d07c6e0"
        ),
        .binaryTarget(
            name: "KakaoLink",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/KakaoLink.xcframework.zip",
            checksum: "fd8abd45dfeada533deaec52c05cd45bbeeb84274ea52a0034043f6f5d393788"
        ),
        .binaryTarget(
            name: "KakaoMessageTemplate",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/KakaoMessageTemplate.xcframework.zip",
            checksum: "baebd7735d293e50f22e430a3dda725c5b1987a86bbd0e1b78d1ef91cb8bc9a0"
        ),
        .binaryTarget(
            name: "KakaoOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/KakaoOpenSDK.xcframework.zip",
            checksum: "d490518b23c3d3c012896673c1d44e74f1e4c58c33f9879f17d6398a66b5b037"
        ),
        .binaryTarget(
            name: "Masonry",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/Masonry.xcframework.zip",
            checksum: "c2ada91cad0cf628feb94738dd7d70cc464e49fd0b1a2c54d74d842ab8d2f152"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/nanopb.xcframework.zip",
            checksum: "81a58b09d27ee97a66db6d9d5cbb941d7acbb09ef40e569428aa61fe42cf4633"
        ),
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/NaverThirdPartyLogin.xcframework.zip",
            checksum: "9dfd48deb278c8274babf52f343b656e89201b6b76a20a949539bda2279822a5"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubee",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/onesdk_ios_ubee.xcframework.zip",
            checksum: "4ce8dd37a99f6821b50e5d1e3e928797184ca3d3bb32c03afe080cbfc9bccef8"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubkakao",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/onesdk_ios_ubkakao.xcframework.zip",
            checksum: "0dd283099a1ca8d3c17a5da1be37e18dfff37fd8c14f914e4a35a3b3d672ee61"
        ),
        .binaryTarget(
            name: "onesdk_ios_ubwechat",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/onesdk_ios_ubwechat.xcframework.zip",
            checksum: "31a67aceb242161874eba9e10ab6652108407626d9782a8a5875286d991ec186"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/OnesdkBaitianFramework.xcframework.zip",
            checksum: "f3ceb0ff933586bdff1f5563b123c70721246f8cd176422da66d45dd6078e423"
        ),
        .binaryTarget(
            name: "OnesdkFireBaseCloudMessage",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/OnesdkFireBaseCloudMessage.xcframework.zip",
            checksum: "10f470e1bbe2713a4f666bd91f34835719c08f1b1c50f1f36250c145f8dfcabe"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b3f440b8a70c0088e0f01c117854670d11c580177ae64f5224c80e04c3a35874"
        ),
        .binaryTarget(
            name: "OnesdkSeacommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/OnesdkSeacommon.xcframework.zip",
            checksum: "c79d8669572f11f080c6415ee0489cf650313e908e8aeb3b0ed772a09ebf59a6"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/OtherPartySDKFramework.xcframework.zip",
            checksum: "c5fb834dd68ca3b4a74189d3afd66b2f665f450df32d8e1a8c672afc9e539097"
        ),
        .binaryTarget(
            name: "Promises",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/Promises.xcframework.zip",
            checksum: "7c7f30fce8034ce087e43bd936ec3ebeec2e01ae83cf51b53742b7b1c187fa1b"
        ),
        .binaryTarget(
            name: "RecaptchaInterop",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/RecaptchaInterop.xcframework.zip",
            checksum: "c77bce6aa561561db4b1dbee992b29361de28316ff6d00b4d4fb241ee9e64da2"
        ),
        .binaryTarget(
            name: "UnityUbeejoyManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/MadfunSDK/3.0.1-dev-1549803/UnityUbeejoyManager.xcframework.zip",
            checksum: "f379c39eb86b5b582bf979455304628378135aa7cb52dd3f334c16b5874c8860"
        )
    ]
)
