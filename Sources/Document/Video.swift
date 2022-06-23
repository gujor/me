import Foundation

public struct Video: Hashable {
  public var description: String
  public var github: String?

  public init(description: String, github: String? = nil) {
    self.description = description
    self.github = github
  }

  public var githubUrl: URL? {
    guard let github = github else { return nil }
    return URL(string: "https://user-images.githubusercontent.com/\(github)")
  }
}
