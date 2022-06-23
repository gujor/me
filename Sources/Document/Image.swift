import Foundation

public struct Image: Hashable {
  public var description: String
  public var github: String?
  public var relativePath: String?

  public init(
    description: String,
    github: String? = nil,
    relativePath: String? = nil
  ) {
    self.description = description
    self.github = github
    self.relativePath = relativePath
  }

  public var githubUrl: URL? {
    guard let github = github else { return nil }
    return URL(string: "https://user-images.githubusercontent.com/\(github)")
  }
}
