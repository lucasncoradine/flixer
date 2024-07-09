import Foundation

enum ImageFrameStyle: CaseIterable {
    case vertical
    case horizontal
    case square
}

enum ImageFrameSize: CaseIterable {
    case large
    case medium
    case small

    func value(for style: ImageFrameStyle) -> CGSize {
        switch self {
        case .large:
            return largeSize(for: style)
        case .medium:
            return mediumSize(for: style)
        case .small:
            return smallSize(for: style)
        }
    }
}

private extension ImageFrameSize {
    // Large
    func largeSize(for style: ImageFrameStyle) -> CGSize {
        switch style {
        case .vertical:
            return .init(width: 146, height: 220)
        case .horizontal:
            return .init(width: 300, height: 160)
        case .square:
            return .init(width: 200, height: 200)
        }
    }

    // Medium
    func mediumSize(for style: ImageFrameStyle) -> CGSize {
        switch style {
        case .vertical:
            return .init(width: 106, height: 160)
        case .horizontal:
            return .init(width: 230, height: 138)
        case .square:
            return .init(width: 140, height: 140)
        }
    }

    // Small
    func smallSize(for style: ImageFrameStyle) -> CGSize {
        switch style {
        case .vertical:
            return .init(width: 80, height: 120)
        case .horizontal:
            return .init(width: 200, height: 120)
        case .square:
            return .init(width: 70, height: 70)
        }
    }
}
