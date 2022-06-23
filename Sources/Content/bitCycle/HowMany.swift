import Project

extension Project {
  public static let howMany = Project(
    devliverables: [.iOSApp, .prototype],
    summary: .init(
      #"Prototyped a cognivity based multiplayer AR game where the players are presented a set of objects on a table and answering questions like "How many red balls?" or "How many bald taxi drivers?"."#,
      "Learned about augmented reality capabilities of the iOS platform.",
      "Learned about peer-to-peer iOS communication."
    ),
    employer: .bitCycle,
    endDate: .year(2020),
    name: "Prototyping a cognivity based multiplayer AR game",
    customer: .bitCycle,
    roles: [.iOSDeveloper, .productDesigner, .selfEmployed],
    startDate: .year(2019),
    hardSkills: [
      .swift, .arKit, .iBeacon, .coreLocation, .sceneKit, .multipeerConnectivity, .mvvm,
    ],
    softSkills: [.creativity, .problemSolving, .prototyping]
  )
}
