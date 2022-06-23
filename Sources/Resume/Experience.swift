import Foundation
import Project

public struct Experience {
  public var start: Date
  public var end: Date
  public var roles: [Role]
  public var employer: Company
  public var projects: [Project]

  public init(
    start: Date,
    end: Date,
    roles: [Role],
    company: Company,
    projects: [Project]
  ) {
    self.start = start
    self.end = end
    self.roles = roles
    self.employer = company
    self.projects = projects
  }
}

extension Experience {
  public static func from(projects: any Sequence<Project>) -> [Experience] {
    Dictionary(grouping: projects) { $0.employer }
      .values
      .map { projects -> Experience in
        Experience(
          start: projects.map { $0.startDate }.sorted().first!,
          end: projects.map { $0.endDate }.sorted().last!,
          roles: projects.flatMap { $0.roles },
          company: projects.first!.employer,
          projects: projects
        )
      }
  }
}
