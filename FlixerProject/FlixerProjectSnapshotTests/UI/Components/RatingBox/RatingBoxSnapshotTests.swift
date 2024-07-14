import XCTest
import SwiftUI
import SnapshotTesting
@testable import FlixerProject

final class RatingBoxSnapshotTests: XCTestCase {
    func testRatingBoxStyle_ShouldMatchSnapshots() {
        let ratingBoxStyles: [RatingBox] = [
            .init(value: "9.0", size: .large),
            .init(value: "9.0", size: .medium),
            .init(value: "9.0", size: .small)
        ]

        ratingBoxStyles.forEach { ratingBox in
            assertSnapshot(of: ratingBox.asTestingView(), as: .image)
        }
    }
}
