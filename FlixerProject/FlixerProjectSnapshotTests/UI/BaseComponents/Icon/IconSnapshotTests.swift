import SnapshotTesting
import XCTest
@testable import FlixerProject

final class IconSnapshotTests: XCTestCase {
    func testIconImages_AndSizes_ShouldMatchSnapshots() {
        IconImage.allCases.forEach { image in
            let regular = Icon(image, size: .small)
            let filled = Icon(image, size: .small).filled()

            assertSnapshot(of: regular, as: .image)
            assertSnapshot(of: filled, as: .image)
        }
    }
}
