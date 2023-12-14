//
// TopHitsResponseWithAnalytics.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct TopHitsResponseWithAnalytics: Codable, JSONEncodable, Hashable {

  /** Top hits. */
  public var hits: [TopHitWithAnalytics]

  public init(hits: [TopHitWithAnalytics]) {
    self.hits = hits
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case hits
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(hits, forKey: .hits)
  }
}
