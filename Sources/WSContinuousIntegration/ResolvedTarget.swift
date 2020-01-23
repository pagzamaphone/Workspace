/*
 ResolvedTarget.swift

 This source file is part of the Workspace open source project.
 Diese Quelldatei ist Teil des qeulloffenen Arbeitsbereich‐Projekt.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2020 Jeremy David Giesbrecht and the Workspace project contributors.
 Urheberrecht ©2020 Jeremy David Giesbrecht und die Mitwirkenden des Arbeitsbereich‐Projekts.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import PackageModel

extension ResolvedTarget: GraphNode {

  var dependencyNodes: [GraphNode] {
    return dependencies.map { dependency in
      if let product = dependency.product {
        return product
      } else {
        return dependency.target!
      }
    }
  }

  var dependencyTargets: [ResolvedTarget] {
    return dependencies.flatMap { (dependency) -> [ResolvedTarget] in
      if let product = dependency.product {
        // @exempt(from: tests) #workaround(Not testable yet.)
        return product.targets
      } else {
        return [dependency.target!]
      }
    }
  }
}