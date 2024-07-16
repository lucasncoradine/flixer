import SwiftUI

struct BorderedModifier: ViewModifier {
    private let color: Color
    private let lineWidth: CGFloat
    private let cornerRadius: CGFloat

    public init(color: Color, lineWidth: CGFloat, cornerRadius: CGFloat) {
        self.color = color
        self.lineWidth = lineWidth
        self.cornerRadius = cornerRadius
    }

    func body(content: Content) -> some View {
        content.overlay {
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(color, lineWidth: lineWidth)
        }
    }
}
