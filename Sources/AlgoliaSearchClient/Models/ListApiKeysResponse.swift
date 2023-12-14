//
// ListApiKeysResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct ListApiKeysResponse: Codable, JSONEncodable, Hashable {

  /** API keys. */
  public var keys: [GetApiKeyResponse]

  public init(keys: [GetApiKeyResponse]) {
    self.keys = keys
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case keys
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(keys, forKey: .keys)
  }
}
