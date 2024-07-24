import SwiftUI

private extension View {
    /// Private method to handle the UINavigationController
    /// - parameters:
    ///     - completion: Method to handle the navigation controller
    @ViewBuilder
    func navigationController(_ completion: @escaping (UINavigationController) -> Void) -> some View {
        self.background(NavigationControllerExtractor(completion: completion))
    }
}

extension View {
    /// Sets a custom view as accessory at the traling of the navigation bar
    /// - parameters:
    ///     - content: View to be displayed as accessory
    @ViewBuilder
    func customNavigationAccessory<Content: View>(@ViewBuilder _ content: @escaping () -> Content) -> some View {
        self.navigationController { controller in
            let navigationBar = controller.navigationBar
            let hostingController = UIHostingController(rootView: content())
            let clippedView = navigationBar.subviews.first(where: \.clipsToBounds)

            if let customView = hostingController.view,
               let clippedView {
                clippedView.addSubview(customView)
                customView.backgroundColor = .clear

                customView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    customView.trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor, constant: -20),
                    customView.bottomAnchor.constraint(equalTo: clippedView.bottomAnchor, constant: -8)
                ])
            } else {
                print("[DEBUG] navigationTitle is not defined.")
            }
        }
    }
}
