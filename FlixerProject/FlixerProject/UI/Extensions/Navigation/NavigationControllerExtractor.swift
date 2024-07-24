import SwiftUI

/// Extracts the UINavigationController from the View
/// - parameters:
///     - completion: Handles the UINavigationController
struct NavigationControllerExtractor: UIViewRepresentable {
    let completion: (UINavigationController) -> Void

    func makeUIView(context: Context) -> some UIView {
        return UIView()
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            guard let navigationController = uiView.parentController?.navigationController else { return }
            completion(navigationController)
        }
    }
}

private extension UIView {
    /// The first matching parent ViewController from the UIView
    /// - returns: UIViewController?
    var parentController: UIViewController? {
        sequence(first: self) { view in
            view.next
        }.first { responder in
            responder is UIViewController
        } as? UIViewController
    }
}
