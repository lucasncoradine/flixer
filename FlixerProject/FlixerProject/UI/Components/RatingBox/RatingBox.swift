import SwiftUI

/// Creates a RatingBox component
///
/// - parameters:
///     - value: The value description
///     - size: The size of the component
/// ## Reference
/// [Figma](https://www.figma.com/design/pqSdo2xKxBGCKXDtI2vtvH/Flixer?node-id=27-557)
struct RatingBox: View {
    let value: String
    var size: RatingBoxSize = .medium

    var body: some View {
        HStack(spacing: 4) {
            Icon(.star, size: size.iconSize)
                .filled()
                .foregroundStyle(.dsYellow)
            Text(value)
                .textStyle(size.textStyle)
                .bold()
        }
    }
}

#Preview {
    VStack {
        RatingBox(value: "8.9", size: .large)
        RatingBox(value: "8.9", size: .medium)
        RatingBox(value: "8.9", size: .small)
    }
}
