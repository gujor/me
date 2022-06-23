import Project

extension Company {
  public static let axfood = Company(
    name: "Axfood",
    url: .init(string: "https://www.axfood.com")!
  )
}

extension Project {
  public static let axfoodApp = Project(
    devliverables: [.iOSApp],
    summary: .init(
      "Strategized and planned with stakeholders around the app future, vision and tech choices.",
      "Improved app stability by refactoring and modernizing legacy parts."
    ),
    employer: .daresay,
    endDate: .year(2021, month: 3),
    name: "Working with a grocery e-commerce app",
    customer: .axfood,
    roles: [.iOSDeveloper],
    startDate: .year(2020, month: 12),
    hardSkills: [.objectiveC, .swift, .uikit, .mvc, .hybridApp],
    softSkills: [.communication]
  )
}
