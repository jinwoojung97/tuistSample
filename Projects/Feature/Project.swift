//
//  Projects.swift
//  ProjectDescriptionHelpers
//
//  Created by inforex on 2022/10/12.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Feature",
    product: .staticFramework,
    dependencies: [
        .project(target: "Service", path: .relativeToRoot("Projects/Service"))
    ],
    resources: ["Resources/**"]
)
