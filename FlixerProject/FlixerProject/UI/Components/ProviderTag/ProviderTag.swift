import SwiftUI

/// Creates a ProviderTag component, used to display the Provider logo.
///
/// - parameters:
///     - style: The style of the tag.
///     
/// ## Reference
/// [Figma](https://www.figma.com/design/pqSdo2xKxBGCKXDtI2vtvH/Flixer?node-id=28-486)
struct ProviderTag: View {
    var style: ProviderTagStyle

    private var textContent: some View {
        Text(style.name)
            .textStyle(.body)
            .minimumScaleFactor(0.8)
            .foregroundStyle(style.color)
            .padding(4)
    }

    var body: some View {
        VStack {
            if let image = style.image {
                imageContent(image)
            } else {
                textContent
            }
        }
        .frame(width: 86, height: 32)
        .bordered(color: style.color, cornerRadius: 5)
    }
}

// MARK: - Private Methods
private extension ProviderTag {
    func imageContent(_ image: ImageResource) -> some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .modifier(ProviderTagImageModifier(style: style))
    }
}

// MARK: Custom Style Modifier
/// Used to set custom properties for an especific provider image
struct ProviderTagImageModifier: ViewModifier {
    let style: ProviderTagStyle

    func body(content: Content) -> some View {
        switch style {
        case .appleTvPlus:
            content
                .colorInvert()
                .padding(.horizontal, 10)
        case .max:
            content.padding(.horizontal, 5)
        default:
            content
        }
    }
}

// MARK: - Preview
#Preview {
    VStack {
        ForEach(ProviderTagStyle.allCases, id: \.self.name) { provider in
            ProviderTag(style: .appleTvPlus)
        }
    }
    .preferredColorScheme(.dark)
}
