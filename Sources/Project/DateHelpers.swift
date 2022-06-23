import Foundation

extension Date {
  public static func year(_ year: Int) -> Date {
    self.year(year, month: 1)
  }

  public static func year(_ year: Int, month: Int) -> Date {
    precondition((0...9999).contains(year))
    precondition((1...12).contains(month))
    return try! Date("\(year)-\(month)-1T00:00:00+0000", strategy: .iso8601)
  }

  public func yearMonthString() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM"
    return dateFormatter.string(from: self)
  }

  public func yearString() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy"
    return dateFormatter.string(from: self)
  }

  public func presentOrYear(now: Date) -> String {
    guard self < now else { return "Present" }
    return self.yearString()
  }

  public func presentOrYearMonth(now: Date) -> String {
    guard self < now else { return "Present" }
    return self.yearMonthString()
  }

}
