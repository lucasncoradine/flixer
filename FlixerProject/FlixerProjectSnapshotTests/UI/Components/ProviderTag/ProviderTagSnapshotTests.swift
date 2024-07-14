import XCTest
import SnapshotTesting
@testable import FlixerProject

final class ProviderTagSnapshotTests: XCTestCase {
    func testProviderTagStyles_ShouldMatchSnapshots() {
        ProviderTagStyle.allCases.forEach { style in
            let providerTag = ProviderTag(style: style)
            assertSnapshot(of: providerTag, as: .image)
        }
    }

    func testGenericProviderTag_ShouldMatchSnapshot() {
        let generic = ProviderTag(style: .generic(name: "Provider"))
        assertSnapshot(of: generic, as: .image)
    }
}
