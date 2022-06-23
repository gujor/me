public struct Paragraph: Hashable {
  public enum Content: Hashable {
    case text(String)
    case italic(String)
    case bold(String)
  }
  public var content: [Content]

  public init(content: [Paragraph.Content]) {
    self.content = content
  }

  public init(_ content: Paragraph.Content...) {
    self.content = content
  }

  public init(_ string: String) {
    self.content = [.text(string)]
  }
}
