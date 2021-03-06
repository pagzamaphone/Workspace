/*
 TextRule.swift

 This source file is part of the Workspace open source project.
 Diese Quelldatei ist Teil des quelloffenen Arbeitsbereich‐Projekt.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2018–2020 Jeremy David Giesbrecht and the Workspace project contributors.
 Urheberrecht ©2018–2020 Jeremy David Giesbrecht und die Mitwirkenden des Arbeitsbereich‐Projekts.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import WSGeneralImports

import SDGSwiftSource

import WSProject

internal protocol TextRule: RuleProtocol {
  // #workaround(Swift 5.2.4, Web lacks Foundation.)
  #if !os(WASI)
    static func check(
      file: TextFile,
      in project: PackageRepository,
      status: ProofreadingStatus,
      output: Command.Output
    ) throws
  #endif
}
