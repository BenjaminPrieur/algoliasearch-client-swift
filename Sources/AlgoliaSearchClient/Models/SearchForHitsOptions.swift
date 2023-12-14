//
// SearchForHitsOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct SearchForHitsOptions: Codable, JSONEncodable, Hashable {

  /** Algolia index name. */
  public var indexName: String
  public var type: SearchTypeDefault?

  public init(indexName: String, type: SearchTypeDefault? = nil) {
    self.indexName = indexName
    self.type = type
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case indexName
    case type
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(indexName, forKey: .indexName)
    try container.encodeIfPresent(type, forKey: .type)
  }
}
