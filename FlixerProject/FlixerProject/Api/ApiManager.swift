import Foundation

protocol ApiManagerProtocol {
    /// Creates a request to the given endpoint
    ///
    /// - parameters:
    ///     - endpoint: The endpoint to be called
    ///     - onSucess: Handles the success of the request
    ///     - onFailure: Handles the failure of the request
    func makeRequest<T: Decodable>(to endpoint: ApiEndpoint,
                                   onSuccess: @escaping (T) -> Void,
                                   onFailure: @escaping (Error) -> Void)
    /// Cancel all requests that are currently running
    func cancelRunningRequests()
}

/// Manages the requests made to the API
final class ApiManager {
    // MARK: - Properties
    let urlSession: URLSession

    // MARK: - Lifecycle
    init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }
}

extension ApiManager: ApiManagerProtocol {
    // MARK: - ApiManagerProtocol
    func makeRequest<T: Decodable>(to endpoint: ApiEndpoint,
                                   onSuccess: @escaping (T) -> Void,
                                   onFailure: @escaping (any Error) -> Void
    ) {
        // Validate URL
        guard let url = endpoint.url else {
            onFailure(ApiError.invalidUrl)
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue

        let task = urlSession.dataTask(with: request) { data, _, error in
            DispatchQueue.main.async {
                // Validate response data
                guard let data else {
                    onFailure(error ?? ApiError.unknown)
                    return
                }

                // Decode data
                let decoder = JSONDecoder()
                do {
                    let decodedData = try decoder.decode(T.self, from: data)
                    onSuccess(decodedData)
                } catch let decodeError {
                    onFailure(decodeError)
                }
            }
        }

        task.resume()
    }

    func cancelRunningRequests() {
        urlSession.getAllTasks { tasks in
            tasks.forEach { $0.cancel() }
        }
    }
}
