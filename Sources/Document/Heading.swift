public enum Heading: Hashable {
  case level1(String)
  case level2(String)
  case level3(String)

  public var introspect: (string: String, level: Int) {
    switch self {
    case .level1(let string):
      return (string, 1)
    case .level2(let string):
      return (string, 2)
    case .level3(let string):
      return (string, 3)
    }
  }
}
