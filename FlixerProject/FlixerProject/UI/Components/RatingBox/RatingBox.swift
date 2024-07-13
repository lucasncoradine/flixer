import SwiftUI

struct RatingBox: View {
    let value: String
    var size: RatingBoxSize = .medium

    var body: some View {
        HStack(spacing: 4) {
            Icon(.star, size: size.iconSize, filled: true)
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
