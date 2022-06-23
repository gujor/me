import Document
import Project

public struct Resume {
  public var about: Document
  public var jobTitle: String
  public var location: String
  public var name: String
  public var email: String
  public var experiences: [Experience]
  public var selfie: Image
  public var telephoneNumber: String
  public var excludedSoftSkills: [SoftSkill]
  public var excludedHardSkills: [HardSkill]

  public init(
    about: Document,
    jobTitle: String,
    location: String,
    name: String,
    email: String,
    experiences: [Experience],
    selfie: Image,
    telephoneNumber: String,
    excludedSoftSkills: [SoftSkill],
    excludedHardSkills: [HardSkill]
  ) {
    self.about = about
    self.jobTitle = jobTitle
    self.location = location
    self.name = name
    self.email = email
    self.experiences = experiences
    self.selfie = selfie
    self.telephoneNumber = telephoneNumber
    self.excludedSoftSkills = excludedSoftSkills
    self.excludedHardSkills = excludedHardSkills
  }
}

extension Resume {
  public func markdown(contentPath: String) -> String {
    return """
      # \(self.name)

      ![\(self.selfie.description)](\(contentPath)/\(self.selfie.relativePath!))

      ## \(self.jobTitle)

      📮 \(self.email) ☎️ \(self.telephoneNumber)📍\(self.location)

      ## About
      \(self.about.markdown())

      ### Soft Skills

      \(Set(self.experiences.flatMap { $0.projects.flatMap { Set($0.softSkills).subtracting(self.excludedSoftSkills) } }) .map { $0.rawValue.encloseInBackticks } .sorted() .joined(separator: " ") )

      ### Hard Skills

      \(Set(self.experiences.flatMap { $0.projects.flatMap { Set($0.hardSkills).subtracting(self.excludedHardSkills) } }) .map { $0.rawValue.encloseInBackticks } .sorted() .joined(separator: " ") )

      ## Experience

      \(self.experiences.sorted { $0.end > $1.end } .map { $0.markdown() } .joined(separator: "\n\n---\n"))

      ## Education

      ### Uppsala University

      Master's degree, Mathematics and Computer Science | 1997 - 2004

      ## Projects

      \(self.experiences.flatMap { $0.projects } .sorted { $0.endDate > $1.endDate } .map { $0.markdown() } .joined(separator:"\n"))

      """
  }
}

extension Experience {
  func markdown() -> String {
    """
    ### \(Set(self.roles).map { $0.rawValue } .sorted { $0.localizedCompare($1) == .orderedAscending } .joined(separator: " | "))

    \(self.companies().map { $0.markdownLink } .joined(separator: " | "))

    \(self.start.yearString()) - \(self.end.presentOrYear(now: .now))

    Projects
    \(self.projects.sorted { $0.endDate > $1.endDate }.map { "- [\($0.name)](#\($0.name.kebabCase))" } .joined(separator: "\n"))
    """
  }

  func companies() -> [Company] {
    let customers = Set(self.projects.map { $0.customer })
      .subtracting([self.employer])
      .sorted { $0.name < $1.name }
    return [self.employer] + customers
  }
}

extension Project {
  func markdown() -> String {
    """
    ### \(self.name)

    \(self.companies().map { $0.markdownLink } .joined(separator: " | "))

    \(self.startDate.yearMonthString()) – \(self.endDate.presentOrYearMonth(now: .now))

    **\(self.roles.map { $0.rawValue } .joined(separator: " | "))**

    \(self.summary.markdown())

    \(self.softSkills.isEmpty ? "" : self.softSkills.map { $0.rawValue.encloseInBackticks } .sorted() .joined(separator: " "))

    \(self.hardSkills.isEmpty ? "" : self.hardSkills.map { $0.rawValue.encloseInBackticks } .sorted() .joined(separator: " "))

    ---
    """
  }

  func companies() -> [Company] {
    guard self.employer != self.customer else {
      return [self.employer]
    }

    return [self.employer, self.customer]
  }
}

extension String {
  var kebabCase: String {
    self.lowercased().replacingOccurrences(of: " ", with: "-")
  }

  var encloseInBackticks: String {
    "`\(self)`"
  }
}

extension Company {
  var markdownLink: String {
    "[\(self.name)](\(self.url))"
  }
}
