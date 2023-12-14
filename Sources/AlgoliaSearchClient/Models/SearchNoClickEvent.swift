//
// SearchNoClickEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct SearchNoClickEvent: Codable, JSONEncodable, Hashable {

  /** User query. */
  public var search: String
  /** Number of occurrences. */
  public var count: Int
  /** Number of occurrences. */
  public var withFilterCount: Int

  public init(search: String, count: Int, withFilterCount: Int) {
    self.search = search
    self.count = count
    self.withFilterCount = withFilterCount
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case search
    case count
    case withFilterCount
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(search, forKey: .search)
    try container.encode(count, forKey: .count)
    try container.encode(withFilterCount, forKey: .withFilterCount)
  }
}
