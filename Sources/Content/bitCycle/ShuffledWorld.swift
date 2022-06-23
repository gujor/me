import Project

extension Project {
  public static let shuffledWorld = Project(
    devliverables: [.prototype, .iOSApp],
    summary: .init(
      "Created a game prototype that lets the player interact with a hand drawn world where different parts have swapped places.",
      "Delt with floating point challenges to make algorithms robust.",
      "Explored different types of generative art suitable for this idea."
    ),
    employer: .bitCycle,
    endDate: .year(2020),
    name: "Prototyping a generative art game",
    customer: .bitCycle,
    roles: [.iOSDeveloper, .productDesigner, .selfEmployed],
    startDate: .year(2019),
    hardSkills: [
      .swift, .uikit, .coreGraphics, .computationalGeometry, .bezierCurve, .pathRendering, .svg,
      .vectorGraphics, .generativeArt, .metal,
    ],
    softSkills: [.creativity, .problemSolving, .prototyping]
  )
}
