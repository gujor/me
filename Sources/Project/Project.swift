import Document
import Foundation

public struct Project: Hashable, Identifiable {
  public var devliverables: Set<Deliverable>
  public var summary: List
  public var employer: Company
  public var endDate: Date
  public var id: String { name }
  public var name: String
  public var customer: Company
  public var roles: [Role]
  public var startDate: Date
  public var hardSkills: Set<HardSkill>
  public var softSkills: Set<SoftSkill>

  public init(
    devliverables: Set<Deliverable>,
    summary: List,
    employer: Company,
    endDate: Date,
    name: String,
    customer: Company,
    roles: [Role],
    startDate: Date,
    hardSkills: Set<HardSkill>,
    softSkills: Set<SoftSkill>
  ) {
    self.devliverables = devliverables
    self.summary = summary
    self.employer = employer
    self.endDate = endDate
    self.name = name
    self.customer = customer
    self.roles = roles
    self.startDate = startDate
    self.hardSkills = hardSkills
    self.softSkills = softSkills
  }
}
