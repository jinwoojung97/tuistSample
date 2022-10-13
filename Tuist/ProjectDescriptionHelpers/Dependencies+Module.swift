//
//  Dependencies+Module.swift
//  ProjectDescriptionHelpers
//
//  Created by inforex on 2022/10/13.
//

import ProjectDescription
import ProjectDescriptionHelpers


/// Dependencies + Module
extension TargetDependency {
    public enum Module {}
}

extension TargetDependency.Module {
    public static let feature = TargetDependency.project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
    public static let service = TargetDependency.project(target: "Service", path: .relativeToRoot("Projects/Service"))
    public static let thirdPartyLib = TargetDependency.project(target: "ThirdPartyLib", path: .relativeToRoot("Projects/ThirdPartyLib"))
}
