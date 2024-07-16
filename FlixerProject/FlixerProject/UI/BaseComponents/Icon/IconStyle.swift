import SwiftUI

enum IconSize: CGFloat {
    /// Size: 14
    case small = 14
    /// Size: 20
    case medium = 20
    /// Size: 26
    case large = 26
}

enum IconImage: CaseIterable {
    case chevronRight
    case home
    case thumbsUp
    case monitor
    case monitorPlay
    case plus
    case profile
    case search
    case star
}

// MARK: - Icon List
extension IconImage {
    /// Regular image version of the icon
    var regular: ImageResource {
        switch self {
        case .chevronRight:
            return .Icon.chevronRight
        case .home:
            return .Icon.home
        case .thumbsUp:
            return .Icon.like
        case .monitor:
            return .Icon.monitor
        case .monitorPlay:
            return .Icon.monitorPlay
        case .plus:
            return .Icon.plus
        case .profile:
            return .Icon.profile
        case .search:
            return .Icon.search
        case .star:
            return .Icon.star
        }
    }

    /// Filled image version of the icon
    var filled: ImageResource {
        switch self {
        case .chevronRight:
            return .Icon.chevronRightFill
        case .home:
            return .Icon.homeFill
        case .thumbsUp:
            return .Icon.likeFill
        case .monitor:
            return .Icon.monitorFill
        case .monitorPlay:
            return .Icon.monitorPlayFill
        case .plus:
            return .Icon.plusFill
        case .profile:
            return .Icon.profileFill
        case .search:
            return .Icon.searchFill
        case .star:
            return .Icon.starFill
        }
    }
}
