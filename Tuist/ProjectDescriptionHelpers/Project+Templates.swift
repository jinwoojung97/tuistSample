import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/
///
public extension Project {
    static let bundleId = "com.jinwoo"
    
    static func makeModule(
        name: String,
        platform: Platform = .iOS,
        product: Product,
        organizationName: String = "jinwoo",
        packages: [Package] = [],
        deploymentTarget: DeploymentTarget? = .iOS(targetVersion: "14.0", devices: [.iphone, .ipad]),
        dependencies: [TargetDependency] = [],
        sources: SourceFilesList = ["Sources/**"],
        resources: ResourceFileElements? = nil,
        infoPlist: InfoPlist = .default
    ) -> Project {
        let settings: Settings = .settings(
            base: [:],
            configurations: [
                .debug(name: .debug),
                .release(name: .release)
            ],
            defaultSettings: .recommended
        )

        let appTarget = Target(
            name: name,
            platform: platform,
            product: product,
            bundleId: "\(bundleId).\(name)",
            deploymentTarget: deploymentTarget,
            infoPlist: infoPlist,
            sources: sources,
            resources: resources,
            dependencies: dependencies
        )

        let testTarget = Target(
            name: "\(name)Tests",
            platform: platform,
            product: .unitTests,
            bundleId: "\(bundleId).\(name)Tests",
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [.target(name: name)]
        )

        let schemes: [Scheme] = [.makeScheme(target: .debug, name: name)]

        let targets: [Target] = [appTarget, testTarget]

        return Project(
            name: name,
            organizationName: organizationName,
            packages: packages,
            settings: settings,
            targets: targets,
            schemes: schemes
        )
    }
}

extension Scheme {
    static func makeScheme(target: ConfigurationName, name: String) -> Scheme {
        return Scheme(
            name: name,
            shared: true,
            buildAction: .buildAction(targets: ["\(name)"]),
            testAction: .targets(
                ["\(name)Tests"],
                configuration: target,
                options: .options(coverage: true, codeCoverageTargets: ["\(name)"])
            ),
            runAction: .runAction(configuration: target),
            archiveAction: .archiveAction(configuration: target),
            profileAction: .profileAction(configuration: target),
            analyzeAction: .analyzeAction(configuration: target)
        )
    }
}

/// import 할 수 있게 target 으로
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
    static let firebaseAnalytics: TargetDependency = .external(name: "FirebaseAnalytics")
}
