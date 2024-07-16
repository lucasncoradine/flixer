import SwiftUI

/// Creates an AgeRateComponent which displays the target audience minimum recommendade age.
///
/// - Parameters:
///     - style: The style of the component
///     - size: The size of the componente. Default is `large`
///
/// ## Reference
/// [Figma](https://www.figma.com/design/pqSdo2xKxBGCKXDtI2vtvH/Flixer?node-id=27-481)
struct AgeRateComponent: View {
    let style: AgeRateStyle
    var size: AgeRateSize = .large

    var body: some View {
        Text(style.rawValue)
            .frame(width: size.frame.width, height: size.frame.height)
            .padding(8)
            .foregroundStyle(style.color)
            .bordered(color: style.color, lineWidth: 1, cornerRadius: size.radius)
    }
}

// MARK: - Preview
#Preview(traits: .sizeThatFitsLayout) {
    HStack(alignment: .top) {
        VStack {
            AgeRateComponent(style: .everyone, size: .large)
            AgeRateComponent(style: .age10, size: .large)
            AgeRateComponent(style: .age12, size: .large)
            AgeRateComponent(style: .age14, size: .large)
            AgeRateComponent(style: .age16, size: .large)
            AgeRateComponent(style: .age18, size: .large)
        }
        VStack {
            AgeRateComponent(style: .everyone, size: .medium)
            AgeRateComponent(style: .age10, size: .medium)
            AgeRateComponent(style: .age12, size: .medium)
            AgeRateComponent(style: .age14, size: .medium)
            AgeRateComponent(style: .age16, size: .medium)
            AgeRateComponent(style: .age18, size: .medium)
        }
        VStack {
            AgeRateComponent(style: .everyone, size: .small)
            AgeRateComponent(style: .age10, size: .small)
            AgeRateComponent(style: .age12, size: .small)
            AgeRateComponent(style: .age14, size: .small)
            AgeRateComponent(style: .age16, size: .small)
            AgeRateComponent(style: .age18, size: .small)
        }
    }
}
