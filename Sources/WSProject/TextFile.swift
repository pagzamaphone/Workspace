/*
 TextFile.swift

 This source file is part of the Workspace open source project.
 Diese Quelldatei ist Teil des quelloffenen Arbeitsbereich‐Projekt.
 https://github.com/SDGGiesbrecht/Workspace#workspace

 Copyright ©2017–2020 Jeremy David Giesbrecht and the Workspace project contributors.
 Urheberrecht ©2017–2020 Jeremy David Giesbrecht und die Mitwirkenden des Arbeitsbereich‐Projekts.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

import SDGLogic
import WSGeneralImports

public struct TextFile {

  // MARK: - Initialization

  // #workaround(Swift 5.2.4, Web lacks Foundation.)
  #if !os(WASI)
    public init(alreadyAt location: URL) throws {
      guard let fileType = FileType(url: location) else {
        unreachable()
      }

      let contents = try String(from: location)
      let executable = FileManager.default.isExecutableFile(atPath: location.path)
      self.init(
        location: location,
        fileType: fileType,
        executable: executable,
        contents: contents,
        isNew: false
      )
    }

    public init(possiblyAt location: URL, executable: Bool = false) throws {
      do {
        self = try TextFile(alreadyAt: location)
        if isExecutable ≠ executable {
          // @exempt(from: tests) Unreachable except with corrupt files.
          isExecutable = executable
          hasChanged = true
        }
      } catch {
        guard let fileType = FileType(url: location) else {
          unreachable()
        }
        self = TextFile(
          location: location,
          fileType: fileType,
          executable: executable,
          contents: "",
          isNew: true
        )
      }
    }

    public init(mockFileWithContents contents: String, fileType: FileType) {
      var url: URL?
      FileManager.default.withTemporaryDirectory(appropriateFor: nil) { temporary in
        url = temporary
      }
      self.init(
        location: url!,
        fileType: fileType,
        executable: false,
        contents: contents,
        isNew: true
      )
    }

    private init(location: URL, fileType: FileType, executable: Bool, contents: String, isNew: Bool)
    {
      self.location = location
      self.isExecutable = executable
      self._contents = contents
      self.hasChanged = isNew
      self.fileType = fileType
    }
  #endif

  // MARK: - Properties

  private class Cache {
    fileprivate var headerStart: String.ScalarView.Index?
    fileprivate var headerEnd: String.ScalarView.Index?
  }
  private var cache = Cache()

  private var hasChanged: Bool
  // #workaround(Swift 5.2.4, Web lacks Foundation.)
  #if !os(WASI)
    public let location: URL
  #endif

  private var isExecutable: Bool {
    willSet {  // @exempt(from: tests) Unreachable except with corrupt files.
      if newValue ≠ isExecutable {  // @exempt(from: tests)
        hasChanged = true
      }
    }
  }

  public let fileType: FileType

  private var _contents: String {
    willSet {
      cache = Cache()
    }
  }
  public var contents: String {
    get {
      return _contents
    }
    set {
      var new = newValue

      // Ensure singular final newline
      while new.hasSuffix("\n\n") {
        new.scalars.removeLast()
      }
      if ¬new.hasSuffix("\n") {
        new.append("\n")
      }

      // Check for changes
      if ¬new.scalars.elementsEqual(contents.scalars) {
        hasChanged = true
        _contents = new
      }
    }
  }

  // MARK: - File Headers

  // #workaround(Swift 5.2.4, Web lacks Foundation.)
  #if !os(WASI)
    public var headerStart: String.ScalarView.Index {
      return cached(in: &cache.headerStart) { () -> String.ScalarView.Index in
        return fileType.syntax.headerStart(file: self)
      }
    }

    internal var headerEnd: String.ScalarView.Index {
      return cached(in: &cache.headerEnd) { () -> String.ScalarView.Index in
        return fileType.syntax.headerEnd(file: self)
      }
    }

    public var header: String {
      get {
        return fileType.syntax.header(file: self)
      }
      set {
        fileType.syntax.insert(header: newValue, into: &self)
      }
    }

    public var body: String {
      get {
        return String(contents[headerEnd...])
      }
      set {
        var new = newValue
        // Remove unnecessary initial spacing
        while new.hasPrefix("\n") {
          new.scalars.removeFirst()  // @exempt(from: tests) Should not be reachable.
        }

        let headerSource = String(contents[headerStart..<headerEnd])
        if ¬headerSource.hasSuffix("\n") {
          new = "\n" + new
        }
        if ¬headerSource.hasSuffix("\n\n") {
          new = "\n" + new
        }

        contents.replaceSubrange(headerEnd..<contents.endIndex, with: new)
      }

    }

    // MARK: - Writing

    public static func reportWriteOperation(
      to location: URL,
      in repository: PackageRepository,
      output: Command.Output
    ) {
      output.print(
        UserFacingDynamic<StrictString, InterfaceLocalization, String>({ localization, path in
          switch localization {
          case .englishUnitedKingdom:
            return "Writing to ‘\(path)’..."
          case .englishUnitedStates, .englishCanada:
            return "Writing to “\(path)”..."
          case .deutschDeutschland:
            return "Zu „\(path)“ wird geschrieben ..."
          }
        }).resolved(using: location.path(relativeTo: repository.location))
      )
    }

    public func writeChanges(for repository: PackageRepository, output: Command.Output) throws {
      if hasChanged {
        TextFile.reportWriteOperation(to: location, in: repository, output: output)

        try contents.save(to: location)
        if isExecutable {
          try FileManager.default.setAttributes(
            [.posixPermissions: NSNumber(value: 0o777)],
            ofItemAtPath: location.path
          )
        }

        if location.pathExtension == "swift" {
          repository.resetManifestCache(debugReason: location.lastPathComponent)
        } else {
          repository.resetFileCache(debugReason: location.lastPathComponent)
        }
      }
    }
  #endif
}
