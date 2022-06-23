import Project

extension Company {
  public static let enequi = Company(
    name: "Enequi",
    url: .init(string: "https://www.enequi.com")!
  )
}

extension Project {
  public static let enequiMesh = Self(
    devliverables: [.openSourceContribution],
    summary: .init(
      "Complemented Nordic Semiconductors Bluetooth Mesh library with different features from the Bluetooth Mesh Model specification.",
      "Recieved dev kits and a t-shirt as token of appreciation for my contributions from Nordic Semiconductors."
    ),
    employer: .daresay,
    endDate: .year(2022, month: 3),
    name: "Contributing to open source Bluetooth LE Mesh libraries",
    customer: .enequi,
    roles: [.iOSDeveloper, .androidDeveloper],
    startDate: .year(2021, month: 12),
    hardSkills: [
      .bluetoothMesh, .java, .kotlin, .swift, .android,
    ],
    softSkills: [.adaptability]
  )
}
