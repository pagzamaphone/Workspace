/*
 LineCommentSyntax.swift

 This source file is part of the Workspace open source project.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2017–2018 Jeremy David Giesbrecht and the Workspace project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import SDGCollections
import WSGeneralImports

public struct LineCommentSyntax {

    // MARK: - Initialization

    internal init(start: String, stylisticSpacing: Bool = true, stylisticEnd: String? = nil) {
        self.start = start
        self.stylisticSpacing = stylisticSpacing
        self.stylisticEnd = stylisticEnd
    }

    // MARK: - Properties

    private let start: String
    private let stylisticSpacing: Bool
    private let stylisticEnd: String?

    // MARK: - Output

    public func comment(contents: String, indent: String = "") -> String { // [_Exempt from Test Coverage_] [_Workaround: Until headers are testable._]

        let spacing = stylisticSpacing ? " " : ""

        var first = true
        var result: [String] = []
        for line in contents.lines.map({ String($0.line) }) {
            var modified = start
            if ¬line.isWhitespace {
                modified += spacing + line
            }
            if let end = stylisticEnd {
                modified += spacing + end
            }

            if first {
                first = false
                result.append(modified)
            } else {
                result.append(indent + modified)
            }
        }

        return result.joinedAsLines()
    }

    // MARK: - Parsing

    internal func commentExists(at location: String.ScalarView.Index, in string: String, countDocumentationMarkup: Bool = true) -> Bool {

        var index = location
        if ¬string.clusters.advance(&index, over: start.clusters) {
            return false
        } else {
            // Comment

            if countDocumentationMarkup {
                return true // [_Exempt from Test Coverage_] [_Workaround: Until headers are testable._]
            } else {
                // Make shure this isn’t documentation.

                if let nextCharacter = string[index...].unicodeScalars.first {

                    if nextCharacter ∈ CharacterSet.whitespacesAndNewlines {
                        return true
                    }
                } // [_Exempt from Test Coverage_] [_Workaround: Until headers are testable._]
                return false
            }
        }
    }

    private func restOfLine(at index: String.ScalarView.Index, in range: Range<String.ScalarView.Index>, of string: String) -> Range<String.ScalarView.Index> {

        if let newline = string.scalars.firstMatch(for: ConditionalPattern({ $0 ∈ CharacterSet.newlines }), in: (index ..< range.upperBound).sameRange(in: string.scalars))?.range {

            return index ..< newline.lowerBound
        } else { // [_Exempt from Test Coverage_] [_Workaround: Until headers are testable._]
            return index ..< range.upperBound // [_Exempt from Test Coverage_] [_Workaround: Until headers are testable._]
        }
    }

    internal func rangeOfFirstComment(in range: Range<String.ScalarView.Index>, of string: String) -> Range<String.ScalarView.Index>? {

        guard let startRange = string.scalars.firstMatch(for: start.scalars, in: range)?.range else {
            return nil // [_Exempt from Test Coverage_] [_Workaround: Until headers are testable._]
        }

        var resultEnd = restOfLine(at: startRange.lowerBound, in: range, of: string).upperBound
        var testIndex: String.ScalarView.Index = resultEnd
        string.scalars.advance(&testIndex, over: RepetitionPattern(CharacterSet.newlinePattern, count: 0 ... 1))

        string.scalars.advance(&testIndex, over: RepetitionPattern(ConditionalPattern({ $0 ∈ CharacterSet.whitespaces})))

        while string.scalars.suffix(from: testIndex).hasPrefix(start.scalars) {
            resultEnd = restOfLine(at: testIndex, in: range, of: string).upperBound
            testIndex = resultEnd
            string.scalars.advance(&testIndex, over: RepetitionPattern(CharacterSet.newlinePattern, count: 0 ... 1))

            string.scalars.advance(&testIndex, over: RepetitionPattern(ConditionalPattern({ $0 ∈ CharacterSet.whitespaces})))
        }

        return startRange.lowerBound ..< resultEnd
    }

    internal func contentsOfFirstComment(in range: Range<String.ScalarView.Index>, of string: String) -> String? { // [_Exempt from Test Coverage_] [_Workaround: Until headers are testable._]
        guard let range = rangeOfFirstComment(in: range, of: string) else {
            return nil

        }

        let comment = String(string[range])
        let lines = comment.lines.map({ String($0.line) }).map { (line: String) -> String in

            var index = line.scalars.startIndex

            line.scalars.advance(&index, over: RepetitionPattern(ConditionalPattern({ $0 ∈ CharacterSet.whitespaces })))
            line.scalars.advance(&index, over: start.scalars)

            if stylisticSpacing {
                line.scalars.advance(&index, over: RepetitionPattern(ConditionalPattern({ $0 ∈ CharacterSet.whitespaces }), count: 0 ... 1))
            }

            var result = String(line.scalars.suffix(from: index))
            if let end = stylisticEnd {
                if result.hasSuffix(end) {
                    result = String(result.scalars[..<result.index(result.scalars.endIndex, offsetBy: −end.scalars.count)])
                }
            }
            return result
        }
        return lines.joinedAsLines()
    }

    internal func contentsOfFirstComment(in string: String) -> String? { // [_Exempt from Test Coverage_] [_Workaround: Until headers are testable._]
        return contentsOfFirstComment(in: string.startIndex ..< string.endIndex, of: string)
    }
}