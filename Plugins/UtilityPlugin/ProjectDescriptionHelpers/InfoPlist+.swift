//
//  InfoPlist.swift
//  UtilityPlugin
//
//  Created by inforex on 2022/10/14.
//

import Foundation
import ProjectDescription

public extension ProjectDescription.InfoPlist {

    static let `default1`: ProjectDescription.InfoPlist = .file(path: .relativeToRoot("Support/Info.plist"))
}
