//
// GetRecommendationsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct GetRecommendationsResponse: Codable, JSONEncodable, Hashable {

  public var results: [RecommendationsResponse]?

  public init(results: [RecommendationsResponse]? = nil) {
    self.results = results
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case results
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(results, forKey: .results)
  }
}
