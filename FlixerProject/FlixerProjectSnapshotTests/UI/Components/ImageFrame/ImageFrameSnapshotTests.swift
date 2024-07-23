import XCTest
import SnapshotTesting
@testable import FlixerProject

final class ImageFrameSnapshotTests: XCTestCase {
    func testImageFrameStyles_ShouldMatchSnapshots() {
        ImageFrameStyle.allCases.forEach { style in
            ImageFrameSize.allCases.forEach { size in
                [true, false].forEach { hasText in
                    let frame = ImageFrame(url: "", style: style, size: size)
                    if hasText {
                        assertSnapshot(of: frame.text(title: "Title", description: "Description"), as: .image)
                        return
                    }
                    assertSnapshot(of: frame, as: .image)
                }
            }
        }
    }
}
