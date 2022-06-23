import Project

extension Company {
  public static let daresay = Company(
    name: "Daresay",
    url: .init(string: "https://daresay.co/")!
  )
}

extension Project {
  public static let daresay: Set<Self> = [
    .merresorWebsite,
    .axfoodApp,
    .enequiMesh,
    .lf,
  ]
}
