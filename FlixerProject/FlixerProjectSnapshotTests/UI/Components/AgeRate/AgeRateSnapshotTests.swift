import XCTest
import SnapshotTesting
@testable import FlixerProject

final class AgeRateSnapshotTests: XCTestCase {
    func testAgeRateStyles_ShouldMatchSnapshots() {
        AgeRateStyle.allCases.forEach { style in
            AgeRateSize.allCases.forEach { size in
                let ageRate = AgeRateComponent(style: style, size: size)
                assertSnapshot(of: ageRate, as: .image)
            }
        }
    }
}
