import Foundation

/// Styles of the text
///
/// ## Reference
/// [Design System](https://www.figma.com/design/pqSdo2xKxBGCKXDtI2vtvH/Flixer?node-id=13-1020)
enum TextStyle {
    /// Font Size: 34
    case large
    /// Font Size: 28
    case title
    /// Font Size: 22
    case heading
    /// Font Size: 20
    case subheading
    /// Font Size: 17
    case body
    /// Font Size: 15
    case footnote
    /// Font Size: 13
    case caption

    /// Font size
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
