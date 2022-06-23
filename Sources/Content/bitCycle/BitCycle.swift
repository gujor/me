import Project

extension Company {
  public static let bitCycle = Company(
    name: "bitCycle",
    url: .init(string: "https://bitcycle.com/")!
  )
}

extension Project {
  public static let bitCycle: Set<Self> = [
    .shuffledWorld,
    .wordFoto,
    .ehlol,
    .howMany,
  ]
}
