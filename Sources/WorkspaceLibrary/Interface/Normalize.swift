/*
 Normalize.swift

 This source file is part of the Workspace open source project.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2018 Jeremy David Giesbrecht and the Workspace project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import SDGCornerstone
import SDGCommandLine

extension Workspace {
    enum Normalize {

        private static let name = UserFacingText<InterfaceLocalization>({ (localization: InterfaceLocalization) -> StrictString in
            switch localization {
            case .englishCanada:
                return "normalize"
            }
        })

        private static let description = UserFacingText<InterfaceLocalization>({ (localization: InterfaceLocalization) -> StrictString in
            switch localization {
            case .englishCanada:
                return "normalizes the current project’s files by removing trailing whitespace, applying Unix newlines and performing canonical decomposition."
            }
        })

        static let command = Command(name: name, description: description, directArguments: [], options: [], execution: { (_: DirectArguments, options: Options, output: inout Command.Output) throws in
            try executeAsStep(options: options, output: &output)
        })

        static func executeAsStep(options: Options, output: inout Command.Output) throws {

            if ¬options.runAsXcodeBuildPhase {
                print(UserFacingText<InterfaceLocalization>({ (localization: InterfaceLocalization) -> StrictString in
                    switch localization {
                    case .englishCanada:
                        return StrictString("Normalizing files...")
                    }
                }).resolved().formattedAsSectionHeader(), to: &output)
            }

            try Normalization.normalize(project: options.project, output: &output)
        }
    }
}