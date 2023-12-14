//
// Facets.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Ordering of facets (widgets).
public struct Facets: Codable, JSONEncodable, Hashable {

  /** Pinned order of facet lists. */
  public var order: [String]?

  public init(order: [String]? = nil) {
    self.order = order
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case order
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(order, forKey: .order)
  }
}
