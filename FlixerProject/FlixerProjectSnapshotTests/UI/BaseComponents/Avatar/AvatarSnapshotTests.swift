import Foundation
import XCTest
import SnapshotTesting
@testable import FlixerProject

final class AvatarSnapshotTests: XCTestCase {
    func testAvatarSizes_ShouldMatchSnapshots() {
        AvatarSize.allCases.forEach { size in
            let avatar = Avatar(url: "", size: size, initials: "T")
            assertSnapshot(of: avatar, as: .image)
        }
    }
}
