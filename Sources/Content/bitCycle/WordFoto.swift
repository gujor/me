import Document
import Project

extension Project {
  public static let wordFoto = Project(
    devliverables: [.iOSApp],
    summary: .init(
      "Created an app that turns your photos and words into stunning works of art.",
      "Worked with product design and marketing, achieving: top 25 overall US paid apps, promotion by Apple in App Store, over 700K copies sold"
    ),
    employer: .bitCycle,
    endDate: .year(2012),
    name: "Designing and developing WordFoto",
    customer: .bitCycle,
    roles: [.iOSDeveloper, .productDesigner, .selfEmployed],
    startDate: .year(2010),
    hardSkills: [
      .objectiveC, .imageProcessing, .typography, .viralMarketing, .coreGraphics, .coreText, .mvvm,
    ],
    softSkills: [.creativity, .problemSolving, .prototyping]
  )
}
