import SwiftUI

struct Icon: View {
    let icon: IconImage
    let size: IconSize
    let filled: Bool

    init(_ icon: IconImage,
         size: IconSize = .medium,
         filled: Bool = false) {
        self.icon = icon
        self.size = size
        self.filled = filled
    }

    var body: some View {
        Image(icon.image(filled: filled))
            .resizable()
            .scaledToFit()
            .frame(width: size.rawValue,
                   height: size.rawValue)
    }
}

// MARK: - Preview
#Preview {
    VStack {
        HStack {
            Icon(.home, size: .large)
            Icon(.home, size: .large, filled: true)
        }
        HStack {
            Icon(.search, size: .large)
            Icon(.search, size: .large, filled: true)
        }
        HStack {
            Icon(.profile, size: .large)
            Icon(.profile, size: .large, filled: true)
        }
        HStack {
            Icon(.monitor, size: .large)
            Icon(.monitor, size: .large, filled: true)
        }
        HStack {
            Icon(.monitorPlay, size: .large)
            Icon(.monitorPlay, size: .large, filled: true)
        }
        HStack {
            Icon(.chevronRight, size: .large)
            Icon(.chevronRight, size: .large, filled: true)
        }
        HStack {
            Icon(.plus, size: .large)
            Icon(.plus, size: .large, filled: true)
        }
        HStack {
            Icon(.thumbsUp, size: .large)
            Icon(.thumbsUp, size: .large, filled: true)
        }
    }
}
