//
// TrendingItemsQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct TrendingItemsQuery: Codable, JSONEncodable, Hashable {

  static let thresholdRule = NumericRule<Int>(
    minimum: 0, exclusiveMinimum: false, maximum: 100, exclusiveMaximum: false, multipleOf: nil)
  /** Facet name for trending models. */
  public var facetName: String?
  /** Facet value for trending models. */
  public var facetValue: String?
  public var model: TrendingItemsModel?
  public var queryParameters: SearchParamsObject?
  public var fallbackParameters: SearchParamsObject?
  /** Algolia index name. */
  public var indexName: String
  /** Recommendations with a confidence score lower than `threshold` won't appear in results. > **Note**: Each recommendation has a confidence score of 0 to 100. The closer the score is to 100, the more relevant the recommendations are.  */
  public var threshold: Int?
  /** Maximum number of recommendations to retrieve. If 0, all recommendations will be returned. */
  public var maxRecommendations: Int? = 0

  public init(
    facetName: String? = nil, facetValue: String? = nil, model: TrendingItemsModel? = nil,
    queryParameters: SearchParamsObject? = nil, fallbackParameters: SearchParamsObject? = nil,
    indexName: String, threshold: Int? = nil, maxRecommendations: Int? = 0
  ) {
    self.facetName = facetName
    self.facetValue = facetValue
    self.model = model
    self.queryParameters = queryParameters
    self.fallbackParameters = fallbackParameters
    self.indexName = indexName
    self.threshold = threshold
    self.maxRecommendations = maxRecommendations
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case facetName
    case facetValue
    case model
    case queryParameters
    case fallbackParameters
    case indexName
    case threshold
    case maxRecommendations
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(facetName, forKey: .facetName)
    try container.encodeIfPresent(facetValue, forKey: .facetValue)
    try container.encodeIfPresent(model, forKey: .model)
    try container.encodeIfPresent(queryParameters, forKey: .queryParameters)
    try container.encodeIfPresent(fallbackParameters, forKey: .fallbackParameters)
    try container.encode(indexName, forKey: .indexName)
    try container.encodeIfPresent(threshold, forKey: .threshold)
    try container.encodeIfPresent(maxRecommendations, forKey: .maxRecommendations)
  }
}
