//
//  Dependencies+SPM.swift
//  ProjectDescriptionHelpers
//
//  Created by inforex on 2022/10/13.
//

import ProjectDescription
//import ProjectDescriptionHelpers
/// import 할 수 있게 target 으로
///
/// Dependencies + SPM
public extension TargetDependency {
    static let rxSwift: TargetDependency         = .external(name: "RxSwift")
    static let rxCocoa: TargetDependency         = .external(name: "RxCocoa")
    static let rxRelay: TargetDependency         = .external(name: "RxRelay")
    static let rxDataSources: TargetDependency   = .external(name: "RxDataSources")
    static let alamofire: TargetDependency       = .external(name: "Alamofire")
    static let moya: TargetDependency            = .external(name: "Moya")
    static let rxMoya: TargetDependency          = .external(name: "RxMoya")
    static let snapKit: TargetDependency         = .external(name: "SnapKit")
    static let then: TargetDependency            = .external(name: "Then")
    static let kingfisher: TargetDependency      = .external(name: "Kingfisher")
    static let rxKeyboard: TargetDependency      = .external(name: "RxKeyboard")
    static let lottie: TargetDependency          = .external(name: "Lottie")
    static let rxGesture: TargetDependency       = .external(name: "RxGesture")
    static let swiftyJson: TargetDependency      = .external(name: "SwiftyJSON")
    static let toast: TargetDependency           = .external(name: "Toast")
}
