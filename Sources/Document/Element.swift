public enum Element: Hashable {
  case image(Image)
  case heading(Heading)
  case list(List)
  case paragraph(Paragraph)
  case video(Video)

  public static func list(_ strings: [String]) -> Self {
    .list(List(elements: strings.map { Paragraph.init(.text($0)) }))
  }

  public static func paragraph(_ text: String) -> Self {
    .paragraph(.init(.text(text)))
  }

  public static func paragraph(_ content: Paragraph.Content...) -> Element {
    .paragraph(.init(content: content))
  }
}
