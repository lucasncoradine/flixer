import SwiftUI

extension View {
    func bordered(color: Color, lineWidth: CGFloat = 1, cornerRadius: CGFloat = 0) -> some View {
        self.modifier(BorderedModifier(color: color, lineWidth: lineWidth, cornerRadius: cornerRadius))
    }

    func cornerRadius(_ radius: CGFloat) -> some View {
        self.modifier(CornerRadiusModifier(radius: radius))
    }

    func fillWidth(alignment: Alignment = .leading) -> some View {
        self.frame(maxWidth: .infinity, alignment: alignment)
    }
}
