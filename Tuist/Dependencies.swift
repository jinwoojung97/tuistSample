//
//  Dependencies.swift
//  Config
//
//  Created by inforex on 2022/10/13.
//

import ProjectDescription
import ProjectDescriptionHelpers

/// Dependencies.swift를 사용한 경우 tuist fetch를 해줘야 Package들을 resolve 한다.
// 라이브러리 fetch
let dependencies = Dependencies(
    carthage: [],
    swiftPackageManager: [
        .rxSwift,
        .rxDataSources,
        .alamofire,
        .moya,
        .snapKit,
        .then,
        .kingfisher,
        .lottie,
        .rxKeyboard,
        .rxGesture,
        .swiftyJson,
        .toast
//        .firebase
    ],
    platforms: [.iOS]
)

// 라이브러리를 깃헙에서 긁어 오겠다
public extension Package {
    static let rxSwift: Package       = .remote(url: "https://github.com/ReactiveX/RxSwift", requirement: .branch("main"))
    static let rxDataSources: Package = .remote(url: "https://github.com/RxSwiftCommunity/RxDataSources", requirement: .branch("main"))
    static let alamofire: Package     = .remote(url: "https://github.com/Alamofire/Alamofire", requirement: .branch("master"))
    static let moya: Package          = .remote(url: "https://github.com/Moya/Moya", requirement: .branch("master"))
    static let snapKit: Package       = .remote(url: "https://github.com/SnapKit/SnapKit", requirement: .upToNextMinor(from: "5.0.1"))
    static let then: Package          = .remote(url: "https://github.com/devxoul/Then", requirement: .upToNextMajor(from: "2.7.0"))
    static let kingfisher: Package    = .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "5.15.6"))
    static let lottie: Package        = .remote(url: "https://github.com/airbnb/lottie-ios.git", requirement: .upToNextMajor(from: "3.2.1"))
    static let rxKeyboard: Package    = .remote(url: "https://github.com/RxSwiftCommunity/RxKeyboard", requirement: .upToNextMajor(from: "2.0.0"))
    static let rxGesture: Package     = .remote(url: "https://github.com/RxSwiftCommunity/RxGesture", requirement: .upToNextMajor(from: "4.0.4"))
    static let swiftyJson: Package    = .remote(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", requirement: .upToNextMajor(from: "4.0.0"))
    static let toast: Package         = .remote(url: "https://github.com/scalessec/Toast-Swift", requirement: .branch("master"))
}
