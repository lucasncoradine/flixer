import SwiftUI

extension Text {
    /// Makes the text conform to the given style using the ``TextStyleModifier``
    ///
    /// - parameters:
    ///     - style: The style of the text
    func textStyle(_ style: TextStyle) -> some View {
        modifier(TextStyleModifier(style: style))
    }
}

// MARK: - Modifier
/// Modifies the text according the given style
///
/// - parameters:
///     - style: The style of the text
struct TextStyleModifier: ViewModifier {
    private let style: TextStyle

    public init(style: TextStyle) {
        self.style = style
    }

    func body(content: Content) -> some View {
        content
            .font(.system(size: style.size))
    }
}

// MARK: - Preview
#Preview {
    VStack(alignment: .leading) {
        Text("Large")
            .textStyle(.large)
        Text("Title")
            .textStyle(.title)
        Text("Heading")
            .textStyle(.heading)
        Text("Subheading")
            .textStyle(.subheading)
        Text("Body")
            .textStyle(.body)
        Text("Footnote")
            .textStyle(.footnote)
        Text("Caption")
            .textStyle(.caption)
    }
    .padding(20)
}
