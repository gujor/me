import Foundation

public struct Document: Hashable {
  public var elements: [Element]

  public init(elements: [Element]) {
    self.elements = elements
  }

  public var title: String? {
    elements.compactMap { element -> String? in
      guard case let .heading(heading) = element else { return nil }
      return heading.introspect.string
    }.first
  }
}
