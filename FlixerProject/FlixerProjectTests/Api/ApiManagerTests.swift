import XCTest
@testable import FlixerProject

class ApiManagerTests: XCTestCase {
    private var sut: ApiManager!
    private var expectation: XCTestExpectation!

    override func setUpWithError() throws {
        let urlConfiguration = URLSessionConfiguration.default
        urlConfiguration.protocolClasses = [URLProtocolMock.self]
        let urlSession = URLSession(configuration: urlConfiguration)

        sut = ApiManager(urlSession: urlSession)
        expectation = expectation(description: "Expectation")
    }

    override func tearDown() {
        sut = nil
        expectation = nil
    }

    // MARK: - Tests
    func testGet_WhenSucceed_ShouldReturnCorrectResponse() {
        URLProtocolMock.shouldFail = false

        sut.makeRequest(to: .generic) { (result: MockResponseModel) in
            XCTAssert(result.status == "success")
            self.expectation.fulfill()
        } onFailure: { _ in }

        wait(for: [expectation], timeout: 1.0)
    }

    func testGet_WhenFail_ShouldReturnCorrectError() {
        URLProtocolMock.shouldFail = true

        sut.makeRequest(to: .generic) { (_: MockResponseModel) in } onFailure: { error in
            XCTAssertEqual(error.localizedDescription, ApiError.unknown.localizedDescription)
            self.expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1.0)
    }
}
