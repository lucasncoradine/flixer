import SwiftUI

struct Icon: View {
    let icon: IconImage
    let size: IconSize

    init(_ icon: IconImage,
         size: IconSize = .medium) {
        self.icon = icon
        self.size = size
    }

    var body: some View {
        makeIcon(from: icon.regular)
    }

    @ViewBuilder
    func filled() -> some View {
        makeIcon(from: icon.filled)
    }
}

// MARK: - Helpers
private extension Icon {
    func makeIcon(from imageResource: ImageResource) -> some View {
        Image(imageResource)
            .resizable()
            .scaledToFit()
            .frame(width: size.rawValue,
                   height: size.rawValue)
    }
}

// MARK: - Preview
#Preview {
    List {
        Section("Regular") {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 40))]) {
                ForEach(IconImage.allCases, id: \.self) { icon in
                    Icon(icon, size: .large)
                }
            }
        }

        Section("Filled") {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 40))]) {
                ForEach(IconImage.allCases, id: \.self) { icon in
                    Icon(icon, size: .large).filled()
                }
            }
        }
    }
}
