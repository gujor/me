public struct List: Hashable {
  public var elements: [Paragraph]

  public init(elements: [Paragraph]) {
    self.elements = elements
  }

  public init(_ elements: String...) {
    self.init(elements: elements.map { Paragraph(.text($0)) })
  }
}
