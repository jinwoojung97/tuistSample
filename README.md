# tuistSample
tuist를 활용한 clean architecture

### Usage

1. tuist 설치 -> curl -Ls https://install.tuist.io | bash

2. tuist clean -> tuist fetch -> tuist generate

3. tuist 수정 시 tuist edit


### Directory
```
.
├── Plugins
│   └── UtilityPlugin
├── Project.swift
├── README.md
├── Support
│   └── Info.plist
├── Tuist
│   ├── Config.swift
│   ├── Dependencies
│   ├── Dependencies.swift
│   └── ProjectDescriptionHelpers
├── TuistSample
│   ├── App
│   ├── Domain
│   ├── Presentation
│   ├── Repository
│   ├── Service
│   ├── ThirdPartyLib
│   └── Util
├── TuistSample.xcworkspace
│   ├── contents.xcworkspacedata
│   ├── xcshareddata
│   └── xcuserdata
├── Workspace.swift
└── graph.png
```

### Dependency
SPM
