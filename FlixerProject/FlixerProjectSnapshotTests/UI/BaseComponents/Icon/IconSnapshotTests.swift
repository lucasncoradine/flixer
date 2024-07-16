import SnapshotTesting
import XCTest
@testable import FlixerProject

final class IconSnapshotTests: XCTestCase {
    func testIconImages_AndSizes_ShouldMatchSnapshots() {
        IconImage.allCases.forEach { image in
            [IconSize.small, IconSize.medium, IconSize.large].forEach { size in
                let regular = Icon(image, size: size)
                let filled = Icon(image, size: size).filled()

                assertSnapshot(of: regular, as: .image)
                assertSnapshot(of: filled, as: .image)
            }
        }
    }
}
