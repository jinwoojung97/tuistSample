//
//  Projects.swift
//  ProjectDescriptionHelpers
//
//  Created by inforex on 2022/10/12.
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.app(
    name: "App",
    dependencies: [
        .Module.feature
    ],
    resources: .default,
    infoPlist: .file(path: "Support/Info.plist")
)
