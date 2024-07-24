import SwiftUI

extension View {
    /// Creates a border arround the view calling the ``BorderedModifier``
    ///
    /// - parameters:
    ///     - color: The color of the border
    ///     - lineWidth: The width of the border. Default value is `1`
    ///     - cornerRadius: The radius of the border. Default value is `0`
    func bordered(color: Color, lineWidth: CGFloat = 1, cornerRadius: CGFloat = 0) -> some View {
        self.modifier(BorderedModifier(color: color, lineWidth: lineWidth, cornerRadius: cornerRadius))
    }

    /// Gives a radius for the view using the ``CornerRadiusModifier``
    ///
    /// - parameters:
    ///     - radius: The radius of the view
    func cornerRadius(_ radius: CGFloat) -> some View {
        self.modifier(CornerRadiusModifier(radius: radius))
    }

    /// Makes the view fill the entire screen width
    func fillWidth(alignment: Alignment = .leading) -> some View {
        self.frame(maxWidth: .infinity, alignment: alignment)
    }
}
