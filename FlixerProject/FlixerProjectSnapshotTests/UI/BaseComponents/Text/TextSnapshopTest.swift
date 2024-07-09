import XCTest
import SnapshotTesting
import SwiftUI
@testable import FlixerProject

final class TextSnapshopTest: XCTestCase {
    func testTextStyle_ShouldMatchSnapshots() {
        let textStyles: [some View] = [
            Text("Lorem ipsum").textStyle(.large),
            Text("Lorem ipsum").textStyle(.title),
            Text("Lorem ipsum").textStyle(.heading),
            Text("Lorem ipsum").textStyle(.subheading),
            Text("Lorem ipsum").textStyle(.body),
            Text("Lorem ipsum").textStyle(.footnote),
            Text("Lorem ipsum").textStyle(.caption)
        ]

        textStyles.forEach { style in
            assertSnapshot(of: style, as: .image)
        }
    }
}
