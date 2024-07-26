import SwiftUI

/// Size of the icon
enum IconSize: CGFloat {
    /// Size: 24
    case small = 24
    /// Size: 48
    case medium = 48
    /// Size: 72
    case large = 72
}

/// Icons from Design System
/// ## Reference:
/// [Figma](https://www.figma.com/design/pqSdo2xKxBGCKXDtI2vtvH/Started?node-id=9-446)
enum IconImage: String, CaseIterable {
    // Icons
    case brandAndroid
    case brandApple
    case brandLinux
    case brandNintendoSwitch
    case brandPlaystation
    case brandWindows
    case brandXbox
    case chevronRight
    case heart
    case home
    case like
    case monitor
    case monitorPlay
    case plus
    case profile
    case search
    case star
}

// MARK: - Helpers
extension IconImage {
    static private var basePath = "Icon/"
    static private var filledSuffix = "-fill"

    private var resourceName: String {
        return self.rawValue.toKebabCase()
    }

    private var path: String {
        Self.basePath.appending(resourceName)
    }

    private var pathFilled: String {
        self.path.appending(Self.filledSuffix)
    }
}

// MARK: - Icon List
extension IconImage {
    /// Regular image version of the icon
    var regular: UIImage? {
        UIImage(named: self.path)
    }

    /// Filled image version of the icon
    var filled: UIImage? {
        print(self.pathFilled)
        return UIImage(named: self.pathFilled) ?? self.regular
    }
}
