import SwiftUI

enum AgeRateStyle: String {
    case everyone = "L"
    case age10 = "10"
    case age12 = "12"
    case age14 = "14"
    case age16 = "16"
    case age18 = "18"

    var color: Color {
        switch self {
        case .everyone:
            return .dsGreen
        case .age10:
            return .dsBlue
        case .age12:
            return .dsYellow
        case .age14:
            return .dsOrange
        case .age16:
            return .dsRed
        case .age18:
            return .dsBlack
        }
    }
}

enum AgeRateSize {
    case large
    case medium
    case small

    var frame: CGSize {
        switch self {
        case .large:
            return .init(width: 40, height: 40)
        case .medium:
            return .init(width: 32, height: 32)
        case .small:
            return .init(width: 20, height: 20)
        }
    }

    var labelStyle: TextStyle {
        switch self {
        case .large:
            return .heading
        case .medium:
            return .body
        case .small:
            return .caption
        }
    }

    var radius: CGFloat {
        switch self {
        case .large:
            return 10
        case .medium:
            return 8
        case .small:
            return 6
        }
    }
}
