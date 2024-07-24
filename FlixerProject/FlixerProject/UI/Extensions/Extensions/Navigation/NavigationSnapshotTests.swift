import SwiftUI
import SnapshotTesting
import XCTest
@testable import FlixerProject

final class NavigationControllerExtractorTests: XCTestCase {
    func testNavigationWithCustomAccessory_ShouldMatchSnapshots() {
        let view = ViewStub().asTestingView()
        assertSnapshot(of: view, as: .image)
    }
}

private struct ViewStub: View {
    var body: some View {
        NavigationStack {
            EmptyView()
                .customNavigationAccessory {
                    Image(systemName: "gamecontroller")
                }
        }
    }
}
