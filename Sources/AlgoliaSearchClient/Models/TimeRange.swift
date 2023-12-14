//
// TimeRange.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct TimeRange: Codable, JSONEncodable, Hashable {

  /** Lower bound of the time range (Unix timestamp). */
  public var from: Int
  /** Upper bound of the time range (Unix timestamp). */
  public var until: Int

  public init(from: Int, until: Int) {
    self.from = from
    self.until = until
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case from
    case until
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(from, forKey: .from)
    try container.encode(until, forKey: .until)
  }
}
