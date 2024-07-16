import SwiftUI

/// Modify the view creating a border arround it
///
/// - parameters:
///     - color: The color of the border
///     - lineWidth: The width of the border
///     - cornerRadius: The radius of the border
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

