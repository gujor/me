extension Document {
  public func markdown() -> String {
    self.elements
      .map { $0.markdown() }
      .joined(separator: "\n")
  }
}

extension Element {
  public func markdown() -> String {
    switch self {
    case .heading(let heading):
      return "\(heading.markdown())\n\n"
    case .paragraph(let paragraph):
      return "\(paragraph.markdown())\n"
    case .video(let video):
      return "\n\(video.githubUrl!)\n"
    case .image(let image):
      return "\n![\(image.description)](\(image.githubUrl!))\n"
    case .list(let list):
      return "\n\n\(list.markdown())"
    }
  }
}

extension Heading {
  public func markdown() -> String {
    "\(String(repeating: "#", count: self.introspect.level)) \(self.introspect.string)"
  }
}

extension Paragraph.Content {
  public func markdown() -> String {
    switch self {
    case .text(let string):
      return string
    case .italic(let string):
      return "*\(string)*"
    case .bold(let string):
      return "**\(string)**"
    }
  }
}

extension Paragraph {
  public func markdown() -> String {
    self.content.map { $0.markdown() }.joined()
  }
}

extension List {
  public func markdown() -> String {
    "\(self.elements.map { "- \($0.markdown())" } .joined(separator: "\n"))"
  }
}
