import Foundation

/// An overview of a class
public struct AeriesClassSummary: Codable, Hashable {
    /// The room in which the class is located
    public var roomNumber: String
    /// The name of the class
    public var courseName: String
    /// The name of the teacher
    public var teacherName: String
    /// The percent that the student currently has in the class
    public var percent: String
    /// The current letter grade that the student has in the class
    public var currentMark: String
    /// The current mark and score combined into one string
    public var currentMarkAndScore: String
    /// The current percent as a string including the `%` sign
    public var currentPercentOrAverage: String
    /// The number of missing assignments for the class
    public var numMissingAssignments: Int
    /// String describing when the class was last updated
    public var lastUpdated: String
    /// The raw HTML for the website, returns empty string if none exists
    public var website: String
    /// The access code for the website, returns empty string if none exists
    public var accessCode: String
    /// The name of the term group that this class is in
    public var termGrouping: String
    /// The name of the school that this class belongs to
    public var schoolName: String
    /// The name of the district that this class belongs to
    public var districtName: String
    /// The period of the day that this class takes place
    public var periodTitle: String

    enum CodingKeys: String, CodingKey {
        case roomNumber = "RoomNumber"
        case courseName = "CourseName"
        case teacherName = "TeacherName"
        case percent = "Percent"
        case currentMark = "CurrentMark"
        case currentMarkAndScore = "CurrentMarkAndScore"
        case currentPercentOrAverage = "CurrentPercentOrAverage"
        case numMissingAssignments = "NumMissingAssignments"
        case lastUpdated = "LastUpdated"
        case website = "Website"
        case accessCode = "AccessCode"
        case termGrouping = "TermGrouping"
        case schoolName = "SchoolName"
        case districtName = "DistrictName"
        case periodTitle = "PeriodTitle"
    }

    /// Initialize from parameters
    public init(
        roomNumber: String,
        courseName: String,
        teacherName: String,
        percent: String,
        currentMark: String,
        currentMarkAndScore: String,
        currentPercentOrAverage: String,
        numMissingAssignments: Int,
        lastUpdated: String,
        website: String,
        accessCode: String,
        termGrouping: String,
        schoolName: String,
        districtName: String,
        periodTitle: String
    ) {
        self.roomNumber = roomNumber
        self.courseName = courseName
        self.teacherName = teacherName
        self.percent = percent
        self.currentMark = currentMark
        self.currentMarkAndScore = currentMarkAndScore
        self.currentPercentOrAverage = currentPercentOrAverage
        self.numMissingAssignments = numMissingAssignments
        self.lastUpdated = lastUpdated
        self.website = website
        self.accessCode = accessCode
        self.termGrouping = termGrouping
        self.schoolName = schoolName
        self.districtName = districtName
        self.periodTitle = periodTitle
    }

    /// Initialize from data
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.roomNumber = try container.decode(String.self, forKey: .roomNumber)
        self.courseName = try container.decode(String.self, forKey: .courseName)
        self.teacherName = try container.decode(String.self, forKey: .teacherName)
        self.percent = try container.decode(String.self, forKey: .percent)
        self.currentMark = try container.decode(String.self, forKey: .currentMark)
        self.currentMarkAndScore = try container.decode(String.self, forKey: .currentMarkAndScore)
        self.currentPercentOrAverage = try container.decode(String.self, forKey: .currentPercentOrAverage)
        self.numMissingAssignments = try container.decode(Int.self, forKey: .numMissingAssignments)
        self.lastUpdated = try container.decode(String.self, forKey: .lastUpdated)
        self.website = try container.decode(String.self, forKey: .website)
        self.accessCode = try container.decode(String.self, forKey: .accessCode)
        self.termGrouping = try container.decode(String.self, forKey: .termGrouping)
        self.schoolName = try container.decode(String.self, forKey: .schoolName)
        self.districtName = try container.decode(String.self, forKey: .districtName)
        self.periodTitle = try container.decode(String.self, forKey: .periodTitle)
    }
}
