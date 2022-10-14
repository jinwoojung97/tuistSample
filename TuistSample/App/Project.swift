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
        .Module.domain,
        .Module.presentation,
        .Module.repository,
        .Module.service,
        .Module.thirdPartyLib,
        .Module.util
    ],
    resources: .default
)
