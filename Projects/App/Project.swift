//
//  Projects.swift
//  ProjectDescriptionHelpers
//
//  Created by inforex on 2022/10/12.
//

import ProjectDescription
import ProjectDescriptionHelpers


let project = Project.makeModule(
    name: "App",
    platform: .iOS,
    product: .app,
    dependencies: [
        .project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)
