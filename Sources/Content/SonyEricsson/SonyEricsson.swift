import Project

extension Company {
  public static let sonyEricsson = Company(
    name: "Sony Ericsson",
    url: .init(string: "https://www.sony.com")!
  )
}

extension Project {
  public static let sonyEricsson: Set<Self> = [
    .sonyEricssonApps
  ]
}

extension Project {
  public static let sonyEricssonApps = Project(
    devliverables: [.productDesign, .J2MEMobileApp],
    summary: .init(
      "Created a various apps e.g. SlideShow, PullFace, VoiceTransformer, CamPlus",
      "Worked close with Sony Ericsson as the apps were preloaded on their devices.",
      "Developed an in-house JPEG decoder using J2ME that was faster than using device provided decoder.",
      "Developed audio and image processing algorithms that worked in real-time on slow J2ME based phones."
    ),
    employer: .bitCycle,
    endDate: .year(2008),
    name: "Designing and creating various mobile apps",
    customer: .sonyEricsson,
    roles: [.javaMEMobileDeveloper, .productDesigner, .selfEmployed],
    startDate: .year(2005),
    hardSkills: [.javeME, .imageProcessing, .audioProcessing],
    softSkills: [.creativity, .problemSolving, .prototyping]
  )
}
