import Content
import Foundation
import Resume

func generateGitHubResume() {
  let resumeURL = URL(fileURLWithPath: #file)
    .deletingLastPathComponent()
    .deletingLastPathComponent()
    .deletingLastPathComponent()
    .appendingPathComponent("resume.md")

  try! Resume.gujor.markdown(contentPath: "Sources/Content")
    .write(to: resumeURL, atomically: true, encoding: .utf8)

  print("Generated GitHub resume: \(resumeURL)")
}
