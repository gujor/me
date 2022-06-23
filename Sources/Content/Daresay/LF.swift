import Project

extension Company {
  public static let lf = Company(
    name: "Länsförsäkringar",
    url: .init(string: "https://www.lansforsakringar.se")!
  )
}

extension Project {
  public static let lf = Self(
    devliverables: [.iOSInvoiceScanner],
    summary: .init(
      "Developed algorithms for enabling text and QR scanning of Swedish invoices using native iOS apis removing dependecies on 3rd party solutions.",
      "Created an extensive testbed with invoice images and report generation enabling instant feedback when developing scanner algorithms and minimizing false positives.",
      "Developed a micro app for faster feedback loop when testing the scanner on real devices."
    ),
    employer: .daresay,
    endDate: .distantFuture,
    name: "Developing invoice scanner alghorithms",
    customer: .lf,
    roles: [.iOSDeveloper],
    startDate: .year(2022, month: 3),
    hardSkills: [
      .swift, .imageProcessing, .swiftUI, .vision, .coreImage, .theComposableArchitecture,
      .apiDesign, .combine, .avFoundation,
    ],
    softSkills: [.communication, .teamwork, .problemSolving, .perseverance, .prototyping]
  )
}
