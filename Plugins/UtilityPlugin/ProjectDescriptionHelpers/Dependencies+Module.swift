//
//  Dependencies+Module.swift
//  ProjectDescriptionHelpers
//
//  Created by inforex on 2022/10/13.
//

import ProjectDescription


/// Dependencies + Module
extension TargetDependency {
    public enum Module {}
}

extension TargetDependency.Module {
    public static let domain = TargetDependency.project(target: "Domain", path: .relativeToRoot("TuistSample/Domain"))
    public static let presentation = TargetDependency.project(target: "Presentation", path: .relativeToRoot("TuistSample/Presentation"))
    public static let repository = TargetDependency.project(target: "Repository", path: .relativeToRoot("TuistSample/Repository"))
    public static let service = TargetDependency.project(target: "Service", path: .relativeToRoot("TuistSample/Service"))
    public static let util = TargetDependency.project(target: "Util", path: .relativeToRoot("TuistSample/Util"))
    public static let thirdPartyLib = TargetDependency.project(target: "ThirdPartyLib", path: .relativeToRoot("TuistSample/ThirdPartyLib"))
}
