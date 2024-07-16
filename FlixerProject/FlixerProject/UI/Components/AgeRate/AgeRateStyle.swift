import SwiftUI

/// Represents the style of the AgeRate component
enum AgeRateStyle: String, CaseIterable {
    ///```
    /// color: green
    /// value: L
    case everyone = "L"
    ///```
    /// color: blue
    /// value: 10
    case age10 = "10"
    ///```
    /// color: yellow
    /// value: 12
    case age12 = "12"
    ///```
    /// color: orange
    /// value: 14
    case age14 = "14"
    ///```
    /// color: red
    /// value: 16
    case age16 = "16"
    ///```
    /// color: black
    /// value: 18
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

enum AgeRateSize: CaseIterable {
    ///```
    ///size: 40x40
    ///radius: 10
    case large
    ///```
    ///size: 32x32
    ///radius: 8
    case medium
    ///```
    ///size: 20x20
    ///radius: 6
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
