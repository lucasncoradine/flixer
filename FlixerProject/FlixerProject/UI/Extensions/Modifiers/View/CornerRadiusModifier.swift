import SwiftUI

/// Modifies the view by adding a `clipShape` with the given radius
/// - parameters:
///     - radius: The radius of the shape
struct CornerRadiusModifier: ViewModifier {
    let radius: CGFloat

    func body(content: Content) -> some View {
        content.clipShape(RoundedRectangle(cornerRadius: radius))
    }
}
