/*
 Asterisms.swift

 This source file is part of the Workspace open source project.
 Diese Quelldatei ist Teil des quelloffenen Arbeitsbereich‐Projekt.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2020 Jeremy David Giesbrecht and the Workspace project contributors.
 Urheberrecht ©2020 Jeremy David Giesbrecht und die Mitwirkenden des Arbeitsbereich‐Projekts.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import SDGLogic
import WSGeneralImports

import WSProject

import SDGSwiftSource

internal struct Asterisms: SyntaxRule {

  internal static let identifier = UserFacing<StrictString, InterfaceLocalization>(
    { localization in
      switch localization {
      case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
        return "asterisms"
      case .deutschDeutschland:
        return "sterngruppen"
      }
    })

  private static let message = UserFacing<StrictString, InterfaceLocalization>({ localization in
    switch localization {
    case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
      return "Markdown asterisms should be composed of asterisks."
    case .deutschDeutschland:
      return "Markdown‐Sterngruppen sollen aus Sternchen bestehen."
    }
  })

  // #workaround(SwiftSyntax 0.50200.0, Cannot build.)
  #if !(os(Windows) || os(WASI) || os(Android))
    internal static func check(
      _ node: ExtendedSyntax,
      context: ExtendedSyntaxContext,
      file: TextFile,
      setting: Setting,
      project: PackageRepository,
      status: ProofreadingStatus,
      output: Command.Output
    ) {

      if let token = node as? ExtendedTokenSyntax,
        token.kind == .asterism,
        token.text ≠ "***"
      {

        reportViolation(
          in: file,
          at: token.range(in: context),
          replacementSuggestion: "***",
          message: message,
          status: status
        )
      }
    }
  #endif
}
