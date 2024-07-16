import SwiftUI

/// Creates an ImageFrame component with an image from the given URL. If no style was given, the component will fill the parent view.
///
///
/// - parameters:
///     - url: The URL of the image to be loaded
///     - style(Optional): The style of the frame
///     - size: The size of the frame. Default value is `large`
///
/// ## Reference
/// [Figma](https://www.figma.com/design/pqSdo2xKxBGCKXDtI2vtvH/Flixer?node-id=13-1057)
struct ImageFrame: View {
    let url: String
    @State var style: ImageFrameStyle?
    var size: ImageFrameSize = .large

    private var image: some View {
        AsyncImage(url: URL(string: url)) { image in
            image.resizable()
        } placeholder: {
            Image(.placeholder).resizable()
        }
        .aspectRatio(contentMode: .fill)
    }

    var body: some View {
        Group {
            if let style {
                let sizeValue = size.value(for: style)
                image.frame(width: sizeValue.width,
                            height: sizeValue.height)
            } else {
                image
            }
        }
        .cornerRadius(10)
    }

    
    /// It renders a text content in front of the Image
    /// - Parameters:
    ///   - title: The title to be diplayed
    ///   - description: The description to be displayed
    @ViewBuilder func text(title: String, description: String = "") -> some View {
        self.overlay(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text(title)
                    .textStyle(.subheading)
                    .bold()
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                Text(description)
                    .textStyle(.footnote)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            .fillWidth()
            .padding(8)
            .background(.linearGradient(colors: [.black, .clear],
                                        startPoint: .bottom,
                                        endPoint: .top))
            .foregroundStyle(.white)
        }
        .cornerRadius(10)
    }
}

// MARK: - Preview
#Preview {
    VStack(alignment: .leading) {
        // Vertical
        Text("Vertical").textStyle(.title).bold().padding(.leading)
        ScrollView(.horizontal) {
            HStack {
                ImageFrame(url: "", style: .vertical, size: .large)
                ImageFrame(url: "", style: .vertical, size: .medium)
                ImageFrame(url: "", style: .vertical, size: .small)
            }.padding(.leading)
        }

        // Horizontal
        Text("Horizontal").textStyle(.title).bold().padding(.leading)
        ScrollView(.horizontal) {
            HStack {
                ImageFrame(url: "", style: .horizontal, size: .large)
                    .text(title: "Movie name", description: "Movie description")
                ImageFrame(url: "", style: .horizontal, size: .medium)
                ImageFrame(url: "", style: .horizontal, size: .small)
            }.padding(.leading)
        }

        // Square
        Text("Square").textStyle(.title).bold().padding(.leading)
        ScrollView(.horizontal) {
            HStack {
                ImageFrame(url: "", style: .square, size: .large)
                ImageFrame(url: "", style: .square, size: .medium)
                ImageFrame(url: "", style: .square, size: .small)
            }.padding(.leading)
        }
    }
}
