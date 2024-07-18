import SwiftUI

/// Create an Avatar Component from a image URL.
/// If a `initials` parameters is passed, the placeholder will be those letters.
/// - parameters:
///     - url: URL path of the avatar
///     - size: Size of component
///     - initials: The initials for the placeholder
struct Avatar: View {
    let url: String
    var size: AvatarSize = .large
    var initials: String = ""

    var body: some View {
        AsyncImage(url: URL(string: url)) { image in
            image.resizable()
        } placeholder: {
            placeholder()
        }
        .aspectRatio(contentMode: .fill)
        .cornerRadius(.infinity)
        .frame(width: size.rawValue, height: size.rawValue)
    }

    /// Creates a placeholder for the Avatar. 
    /// If the initials was provided, it creates a placeholder with it. If not, then creates with a placeholder image.
    @ViewBuilder
    private func placeholder() -> some View {
        if initials.isNotEmpty {
            Text(initials)
                .font(.system(size: size.fontSize, design: .rounded))
                .foregroundColor(.dsLightGray)
                .frame(width: size.rawValue, height: size.rawValue)
                .clipShape(Circle())
                .background(.dsBackgroundInverse)
        } else {
            Image(.placeholder)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

// MARK: - Preview
#Preview {
    Avatar(url: "", size: .large, initials: "L")
}
