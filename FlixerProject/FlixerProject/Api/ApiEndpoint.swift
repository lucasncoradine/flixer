import Foundation

enum RequestType: String {
    case get = "GET"
    case post = "POST"
}

enum ApiEndpoint {
    // TODO: Future implementation
    // URL and Request Method
    case generic

    var url: URL? {
        URL(string: "https://google.com")
    }

    var method: RequestType {
        .get
    }
}
