@testable import SwiftLintFramework

protocol ProjectMock {
    var testResourcesPath: String { get }
}

extension ProjectMock {
    // MARK: Directory Paths
    var projectMockPathLevel0: String {
        return testResourcesPath.stringByAppendingPathComponent("ProjectMock")
    }

    var projectMockPathLevel1: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("Level1")
    }

    var projectMockPathLevel2: String {
        return projectMockPathLevel1.stringByAppendingPathComponent("Level2")
    }

    var projectMockPathLevel3: String {
        return projectMockPathLevel2.stringByAppendingPathComponent("Level3")
    }

    var projectMockNestedPath: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("NestedConfig/Test")
    }

    var projectMockNestedSubPath: String {
        return projectMockNestedPath.stringByAppendingPathComponent("Sub")
    }

    var projectMockPathChildConfigValid1: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("ChildConfig/Valid1/Main")
    }

    var projectMockPathChildConfigValid2: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("ChildConfig/Valid2")
    }

    var projectMockPathParentConfigValid1: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("ParentConfig/Valid1")
    }

    var projectMockPathParentConfigValid2: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("ParentConfig/Valid2")
    }

    var projectMockEmptyFolder: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("EmptyFolder")
    }

    // MARK: YAML Paths
    var projectMockYAML0: String {
        return projectMockPathLevel0.stringByAppendingPathComponent(Configuration.defaultFileName)
    }

    var projectMockYAML0CustomPath: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("custom.yml")
    }

    var projectMockYAML0CustomRules: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("custom_rules.yml")
    }

    var projectMockYAML2: String {
        return projectMockPathLevel2.stringByAppendingPathComponent(Configuration.defaultFileName)
    }

    var projectMockYAML2CustomRules: String {
        return projectMockPathLevel2.stringByAppendingPathComponent("custom_rules.yml")
    }

    var projectMockYAML2CustomRulesDisabled: String {
        return projectMockPathLevel2.stringByAppendingPathComponent("custom_rules_disabled.yml")
    }

    // MARK: Swift File Paths
    var projectMockSwift0: String {
        return projectMockPathLevel0.stringByAppendingPathComponent("Level0.swift")
    }

    var projectMockSwift1: String {
        return projectMockPathLevel1.stringByAppendingPathComponent("Level1.swift")
    }

    var projectMockSwift2: String {
        return projectMockPathLevel2.stringByAppendingPathComponent("Level2.swift")
    }

    var projectMockSwift3: String {
        return projectMockPathLevel3.stringByAppendingPathComponent("Level3.swift")
    }

    var projectMockNestedSubSwift: String {
        return projectMockNestedSubPath.stringByAppendingPathComponent("Sub.swift")
    }

    var projectMockNestedYAML: String {
        return projectMockNestedPath.stringByAppendingPathComponent(Configuration.defaultFileName)
    }

    var projectMockConfig0: Configuration {
        return Configuration(configurationFiles: [])
    }

    var projectMockConfig0CustomPath: Configuration {
        return Configuration(configurationFiles: [projectMockYAML0CustomPath])
    }

    var projectMockConfig0CustomRules: Configuration {
        return Configuration(configurationFiles: [projectMockYAML0CustomRules])
    }

    var projectMockConfig2: Configuration {
        return Configuration(configurationFiles: [projectMockYAML2])
    }

    var projectMockConfig2CustomRules: Configuration {
        return Configuration(configurationFiles: [projectMockYAML2CustomRules])
    }

    var projectMockConfig2CustomRulesDisabled: Configuration {
        return Configuration(configurationFiles: [projectMockYAML2CustomRulesDisabled])
    }

    var projectMockConfig3: Configuration {
        return Configuration(configurationFiles: [projectMockPathLevel3 + "/" + Configuration.defaultFileName])
    }

    var projectMockNestedConfig: Configuration {
        return Configuration(configurationFiles: [projectMockNestedYAML])
    }
}
