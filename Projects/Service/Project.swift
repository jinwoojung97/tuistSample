//
//  Projects.swift
//  ProjectDescriptionHelpers
//
//  Created by inforex on 2022/10/12.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Service",
    product: .staticFramework,
    dependencies: [
        .Module.thirdPartyLib
    ]
)
