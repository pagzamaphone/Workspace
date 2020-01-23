/*
 GraphNode.swift

 This source file is part of the Workspace open source project.
 Diese Quelldatei ist Teil des qeulloffenen Arbeitsbereich‐Projekt.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2020 Jeremy David Giesbrecht and the Workspace project contributors.
 Urheberrecht ©2020 Jeremy David Giesbrecht und die Mitwirkenden des Arbeitsbereich‐Projekts.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

internal protocol GraphNode {
  var name: String { get }
  var dependencyNodes: [GraphNode] { get }
}

extension GraphNode {
  var recursiveDependencyNodes: [GraphNode] {
    return dependencyNodes.flatMap({ $0.recursiveDependencyNodes }).prepending(self)
  }
}