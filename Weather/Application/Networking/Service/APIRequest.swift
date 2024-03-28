//
//  APIRequest.swift
//  Weather
//
//  Created by Олег Алексеев on 22.03.2024.
//

import Foundation

enum APIRequestError: Error {
  case itemsNotFound
  case requestFailed
}

protocol APIRequest {
  associatedtype Response

  var path: String { get }
  var queryItems: [URLQueryItem]? { get }
  var request: URLRequest { get }
  var postData: Data? { get }
}

// TODO: write real url components
extension APIRequest {
  var host: String { "locahost" }
  var port: Int { 8080 }
  var apiKey: String { ProcessInfo.processInfo.environment["API_KEY"] ?? ""}
}

extension APIRequest {
  var queryItems: [URLQueryItem]? { nil }
  var postData: Data? { nil }
}

extension APIRequest {
  var request: URLRequest {
    var components = URLComponents()

    components.scheme = "http"
    components.host = host
    components.port = port
    components.path = path
    components.queryItems = queryItems

    var request = URLRequest(url: components.url!)

    if let data = postData {
      request.httpBody = data
      request.addValue("application/json", forHTTPHeaderField: "Content-Type")
      request.httpMethod = "POST"
    }

    return request
  }
}

extension APIRequest where Response: Decodable {

  func send() async throws -> Response {
    let (data, response) = try await URLSession.shared.data(for: request)

    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200 else {
      throw APIRequestError.itemsNotFound
    }

    let decoder = JSONDecoder()
    let decoded = try decoder.decode(Response.self, from: data)

    return decoded
  }
}
