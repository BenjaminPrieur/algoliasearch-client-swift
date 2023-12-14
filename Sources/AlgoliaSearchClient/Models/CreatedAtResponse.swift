//
// CreatedAtResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Response and creation timestamp.
public struct CreatedAtResponse: Codable, JSONEncodable, Hashable {

  /** Timestamp of creation in [ISO-8601](https://wikipedia.org/wiki/ISO_8601) format. */
  public var createdAt: String

  public init(createdAt: String) {
    self.createdAt = createdAt
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case createdAt
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(createdAt, forKey: .createdAt)
  }
}
