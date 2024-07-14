import SwiftUI

extension View {
    func asTestingView() -> UIHostingController<Self> {
        UIHostingController(rootView: self)
    }
}
