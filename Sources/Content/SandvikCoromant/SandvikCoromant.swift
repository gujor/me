import Project

extension Company {
  public static let sandvikCoromant = Company(
    name: "Sandvik Coromant",
    url: .init(string: "https://www.sandvik.coromant.com")!
  )
}

extension Project {
  public static let sandvikCoromant: Set<Self> = [
    .mesDeveloper,
    .weighInSystem,
  ]
}

extension Project {
  public static let mesDeveloper = Project(
    devliverables: [.webApp, .backend],
    summary: .init(
      "Maintaining a monolithic manufacturing execution system.",
      "Migrated parts of the above to an ecosystem of microservices as a part of industry 4.0."
    ),
    employer: .sandvikCoromant,
    endDate: .year(2018, month: 6),
    name: "Maintaining a manufacturing execution system",
    customer: .sandvikCoromant,
    roles: [.systemDeveloper],
    startDate: .year(2017, month: 8),
    hardSkills: [.typescript, .mySQL, .VBNet],
    softSkills: [.teamwork, .adaptability]
  )
}

extension Project {
  public static let weighInSystem = Project(
    devliverables: [.webApp, .backend],
    summary: .init(
      "Designed and created a real-time weigh in system for powder.",
      "Iterated the design and solutions with the factory workers (users)."
    ),
    employer: .sandvikCoromant,
    endDate: .year(2018, month: 9),
    name: "Creating a weigh in system",
    customer: .sandvikCoromant,
    roles: [.systemDeveloper],
    startDate: .year(2018, month: 6),
    hardSkills: [.realtimeSystem, .signalR, .angular, .ASPNETCore],
    softSkills: [.teamwork, .adaptability, .prototyping]
  )
}
