import Foundation

enum TextStyle {
    case large
    case title
    case heading
    case subheading
    case body
    case footnote
    case caption

    var size: CGFloat {
        switch self {
        case .large:
            return 34
        case .title:
            return 28
        case .heading:
            return 22
        case .subheading:
            return 20
        case .body:
            return 17
        case .footnote:
            return 15
        case .caption:
            return 13
        }
    }
}
