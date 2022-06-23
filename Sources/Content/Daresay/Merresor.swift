import Project

extension Company {
  public static let merresor = Company(
    name: "Merresor",
    url: .init(string: "https://merresor.se/")!
  )
}

extension Project {
  public static let merresorWebsite = Self(
    devliverables: [.website],
    summary: .init(
      "Worked with an agile team creating a new website for chartering busses and buying tickets.",
      "Involved from the start when the team foundation was built and values, goals and expectations where formulated.",
      "Took part in architectural decisions, user interviews, design decisions and React programming.",
      "Made sure that the product is user centered with accessibiltity and usability in focus"
    ),
    employer: .daresay,
    endDate: .year(2020, month: 12),
    name: "Creating a ticket booking website",
    customer: .merresor,
    roles: [.webDeveloper],
    startDate: .year(2020, month: 11),
    hardSkills: [
      .azure, .nextJS, .sanityio, .react, .html, .css3, .githubActions,
    ],
    softSkills: [.adaptability, .teamwork]
  )
}
