//
//  Workspace.swift
//  ProjectDescriptionHelpers
//
//  Created by inforex on 2022/10/12.
//

import ProjectDescription

let workspace = Workspace(
    name: "TuistSample",
    projects: [
        "TuistSample/App",
        "TuistSample/Domain",
        "TuistSample/Presentation",
        "TuistSample/Repository",
        "TuistSample/Service",
        "TuistSample/Util",
        "TuistSample/ThirdPartyLib"
    ]
)
