import Project

extension Project {
  public static let ehlol = Project(
    devliverables: [.iOSApp],
    summary: .init(
      "Created a game of puzzling images and words.",
      "Developed an in-house redux/elm inspired library for building apps.",
      "Learned more about MVPs and failing fast."
    ),
    employer: .bitCycle,
    endDate: .year(2020),
    name: "Designing and developing Ehlol",
    customer: .bitCycle,
    roles: [.iOSDeveloper, .productDesigner, .selfEmployed],
    startDate: .year(2019),
    hardSkills: [.swift, .spriteKit, .redux, .firebase],
    softSkills: [.creativity, .problemSolving, .prototyping]
  )
}
