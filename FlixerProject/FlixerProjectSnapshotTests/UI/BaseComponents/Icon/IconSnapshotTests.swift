import SnapshotTesting
import XCTest
@testable import FlixerProject

final class IconSnapshotTests: XCTestCase {
    func testIconStyle_ShouldMatchSnapshots() throws {
        let largeIconNormal = Icon(.home, size: .large)
        let largeIconFilled = Icon(.home, size: .large, filled: true)
        let mediumIconNormal = Icon(.home, size: .medium)
        let mediumIconFilled = Icon(.home, size: .medium, filled: true)
        let smallIconNormal = Icon(.home, size: .small)
        let smallIconFilled = Icon(.home, size: .small, filled: true)

        assertSnapshot(of: largeIconNormal, as: .image)
        assertSnapshot(of: largeIconFilled, as: .image)
        assertSnapshot(of: mediumIconNormal, as: .image)
        assertSnapshot(of: mediumIconFilled, as: .image)
        assertSnapshot(of: smallIconNormal, as: .image)
        assertSnapshot(of: smallIconFilled, as: .image)
    }

    func testIconImages_ShouldMatchSnapshots() {
        let icons: [Icon] = [
            .init(.home),
            .init(.home, filled: true),
            .init(.chevronRight),
            .init(.chevronRight, filled: true),
            .init(.monitor),
            .init(.monitor, filled: true),
            .init(.monitorPlay),
            .init(.monitorPlay, filled: true),
            .init(.plus),
            .init(.plus, filled: true),
            .init(.profile),
            .init(.profile, filled: true),
            .init(.search),
            .init(.search, filled: true),
            .init(.star),
            .init(.star, filled: true),
            .init(.thumbsUp),
            .init(.thumbsUp, filled: true)
        ]

        icons.forEach { icon in
            assertSnapshot(of: icon, as: .image)
        }
    }
}
