//
// AuthOAuth.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Authentication input for OAuth login.
public struct AuthOAuth: Codable, JSONEncodable, Hashable {

  /** The OAuth endpoint URL. */
  public var url: String
  /** The clientID. */
  public var clientId: String
  /** The secret. */
  public var clientSecret: String

  public init(url: String, clientId: String, clientSecret: String) {
    self.url = url
    self.clientId = clientId
    self.clientSecret = clientSecret
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case url
    case clientId = "client_id"
    case clientSecret = "client_secret"
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(url, forKey: .url)
    try container.encode(clientId, forKey: .clientId)
    try container.encode(clientSecret, forKey: .clientSecret)
  }
}
