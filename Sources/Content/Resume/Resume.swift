import Document
import Project
import Resume

extension Project {
  public static let all: Set<Self> = Project
    .bitCycle
    .union(Project.daresay)
    .union(Project.sandvikCoromant)
    .union(Project.sonyEricsson)
}

extension Image {
  static let selfie = Self(
    description: "Portrait of Gustaf Jorlin",
    github: nil,
    relativePath: "Resume/gustaf_jorlin_portrait_small.jpg"
  )
}

extension Resume {
  public static let gujor = Resume(
    about: .init(elements: [
      .paragraph(
        "Experienced software developer that has been working with creating mobile apps for over 15 years."
      ),
      .paragraph(
        "Loves utilizing the latest technology and design for viral success to add the competitive edge needed to stand out in a crowded market."
      ),
      .paragraph(
        "Contributes to a playful safe-to-fail environment encouraging experiments and iterative methodologies in the search for success."
      ),
      .paragraph(
        "Driven by an urge to create, explore and realize ideas – since early teens coding has been the main tool for doing just that."
      ),
    ]),
    jobTitle: "Senior iOS developer | Architect | Entrepreneur",
    location: "Östhammar, Sweden",
    name: "Gustaf Jorlin",
    email: "gustaf@bitcycle.com",
    experiences: [
      Experience.from(projects: Project.daresay).map(keyPath: \.roles) { _ in [.iOSDeveloper] },
      Experience.from(projects: Project.sandvikCoromant),
      Experience.from(projects: Project.bitCycle),
      Experience.from(projects: Project.sonyEricsson),
    ].flatMap { $0 },
    selfie: .selfie,
    telephoneNumber: "+46 735030489",
    excludedSoftSkills: [],
    excludedHardSkills: [
      .azure, .ASPNETCore, .angular, .bezierCurve, .css3, .computationalGeometry, .generativeArt,
      .githubActions, .html, .java, .kotlin, .nextJS, .pathRendering, .react, .svg, .sanityio,
      .signalR, .typography, .typescript, .vectorGraphics, .VBNet, .redux, .iBeacon, .android,
      .hybridApp, .javeME
    ]
  )
}

extension Sequence {
  func map<T>(keyPath: WritableKeyPath<Element, T>, transform: (T) -> T) -> [Element] {
    self.map { element -> Element in
      var copy = element
      copy[keyPath: keyPath] = transform(element[keyPath: keyPath])
      return copy
    }
  }
}
