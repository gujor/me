import Foundation

public struct Company: Hashable, Identifiable {
  public var id: String { name }
  public var name: String
  public var url: URL

  public init(name: String, url: URL) {
    self.name = name
    self.url = url
  }
}
