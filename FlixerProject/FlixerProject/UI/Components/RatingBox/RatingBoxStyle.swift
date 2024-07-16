enum RatingBoxSize {
    /// - Text style: `subheading`
    /// - Icon size: `large`
    case large
    /// - Text style: `body`
    /// - Icon size: `medium`
    case medium
    /// - Text style: `small`
    /// - Icon size: `small`
    case small

    var textStyle: TextStyle {
        switch self {
        case .large:
            return .subheading
        case .medium:
            return .body
        case .small:
            return .footnote
        }
    }

    var iconSize: IconSize {
        switch self {
        case .large:
            return .large
        case .medium:
            return .medium
        case .small:
            return .small
        }
    }
}
