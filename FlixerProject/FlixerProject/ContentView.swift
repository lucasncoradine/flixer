import SwiftUI

struct ContentView: View {
    let imageUrl = "https://picsum.photos/id/12/200"

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")

            Avatar(url: imageUrl, size: .large)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
