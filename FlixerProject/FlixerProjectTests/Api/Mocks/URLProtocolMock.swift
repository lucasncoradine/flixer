import Foundation
@testable import FlixerProject

// MARK: - Response Model
struct MockResponseModel: Decodable {
    let status: String
    let message: String
}

class URLProtocolMock: URLProtocol {
    static var shouldFail: Bool = false

    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    override func startLoading() {
        do {
            let (response, data) = try requestHandler(request)

            if let response,
               let data {
                client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
                client?.urlProtocol(self, didLoad: data)
            }

            client?.urlProtocolDidFinishLoading(self)
        } catch let error {
            client?.urlProtocol(self, didFailWithError: error)
        }
    }

    override func stopLoading() {
        // Empty
    }

    // MARK: - Private Functions
    private func requestHandler(_ request: URLRequest) throws -> (HTTPURLResponse?, Data?) {
        guard let url = request.url, !Self.shouldFail else {
            throw ApiError.unknown
        }

        return successMock(url: url)
    }
}

// MARK: - Response Mocks
private extension URLProtocolMock {
    func successMock(url: URL) -> (HTTPURLResponse?, Data?) {
        let json = """
                   {
                     "status": "success",
                     "message": "Request was successful!"
                   }
                   """
        let data = json.data(using: .utf8)
        let response = HTTPURLResponse(url: url, statusCode: 200, httpVersion: nil, headerFields: nil)
        return (response, data)
    }
}
