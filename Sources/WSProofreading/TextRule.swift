/*
 TextRule.swift

 This source file is part of the Workspace open source project.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2018–2019 Jeremy David Giesbrecht and the Workspace project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import WSGeneralImports

import SDGSwiftSource

import WSProject

internal protocol TextRule : Rule {
    static func check(file: TextFile, in project: PackageRepository, status: ProofreadingStatus, output: Command.Output) throws
}

extension TextRule {

    // MARK: - Rule

    internal static func check(file: TextFile, syntax: SourceFileSyntax?, in project: PackageRepository, status: ProofreadingStatus, output: Command.Output) throws {
        try check(file: file, in: project, status: status, output: output)
    }
}