import SwiftUI

extension Text {
    func textStyle(_ style: TextStyle) -> some View {
        modifier(TextStyleModifier(style: style))
    }
}

// MARK: - Modifier
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
