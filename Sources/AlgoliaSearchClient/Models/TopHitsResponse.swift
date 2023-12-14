//
// TopHitsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct TopHitsResponse: Codable, JSONEncodable, Hashable {

  /** Top hits. */
  public var hits: [TopHit]

  public init(hits: [TopHit]) {
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
