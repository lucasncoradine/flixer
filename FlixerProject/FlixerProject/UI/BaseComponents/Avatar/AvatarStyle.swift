import Foundation

/// Avatar sizes conforming to Design System
///
/// ## Reference
/// [Figma](https://www.figma.com/design/pqSdo2xKxBGCKXDtI2vtvH/Flixer?node-id=14-1212)
enum AvatarSize: CGFloat, CaseIterable {
    /// ```
    /// size: 150
    /// fontSize: 72
    case large = 150
    /// ```
    /// size: 100
    /// fontSize: 48
    case medium = 100
    /// ```
    /// size: 60
    /// fontSize: 32
    case small = 60
    /// ```
    /// size: 34
    /// fontSize: 17
    case extraSmall = 34

    var fontSize: CGFloat {
        switch self {
        case .large:
            return 72
        case .medium:
            return 48
        case .small:
            return 32
        case .extraSmall:
            return 17
        }
    }
}
