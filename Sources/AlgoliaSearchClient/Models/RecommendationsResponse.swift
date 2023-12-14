//
// RecommendationsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct RecommendationsResponse: Codable, JSONEncodable, Hashable {

  static let abTestVariantIDRule = NumericRule<Int>(
    minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
  static let aroundLatLngRule = StringRule(
    minLength: nil, maxLength: nil, pattern: "^(-?\\d+(\\.\\d+)?),\\s*(-?\\d+(\\.\\d+)?)$")
  static let hitsPerPageRule = NumericRule<Int>(
    minimum: 1, exclusiveMinimum: false, maximum: 1000, exclusiveMaximum: false, multipleOf: nil)
  /** A/B test ID. This is only included in the response for indices that are part of an A/B test. */
  public var abTestID: Int?
  /** Variant ID. This is only included in the response for indices that are part of an A/B test. */
  public var abTestVariantID: Int?
  /** Computed geographical location. */
  public var aroundLatLng: String?
  /** Automatically-computed radius. */
  public var automaticRadius: String?
  public var exhaustive: Exhaustive?
  /** See the `facetsCount` field of the `exhaustive` object in the response. */
  @available(*, deprecated, message: "This property is deprecated.")
  public var exhaustiveFacetsCount: Bool?
  /** See the `nbHits` field of the `exhaustive` object in the response. */
  @available(*, deprecated, message: "This property is deprecated.")
  public var exhaustiveNbHits: Bool?
  /** See the `typo` field of the `exhaustive` object in the response. */
  @available(*, deprecated, message: "This property is deprecated.")
  public var exhaustiveTypo: Bool?
  /** Mapping of each facet name to the corresponding facet counts. */
  public var facets: [String: [String: Int]]?
  /** Statistics for numerical facets. */
  public var facetsStats: [String: FacetsStats]?
  /** Number of hits per page. */
  public var hitsPerPage: Int = 20
  /** Index name used for the query. */
  public var index: String?
  /** Index name used for the query. During A/B testing, the targeted index isn't always the index used by the query. */
  public var indexUsed: String?
  /** Warnings about the query. */
  public var message: String?
  /** Number of hits the search query matched. */
  public var nbHits: Int
  /** Number of pages of results for the current query. */
  public var nbPages: Int
  /** Number of hits selected and sorted by the relevant sort algorithm. */
  public var nbSortedHits: Int?
  /** Page to retrieve (the first page is `0`, not `1`). */
  public var page: Int = 0
  /** Post-[normalization](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/#what-does-normalization-mean) query string that will be searched. */
  public var parsedQuery: String?
  /** Time the server took to process the request, in milliseconds. */
  public var processingTimeMS: Int
  /** Experimental. List of processing steps and their times, in milliseconds. You can use this list to investigate performance issues. */
  public var processingTimingsMS: AnyCodable?
  /** Markup text indicating which parts of the original query have been removed to retrieve a non-empty result set. */
  public var queryAfterRemoval: String?
  public var redirect: Redirect?
  public var renderingContent: RenderingContent?
  /** Time the server took to process the request, in milliseconds. */
  public var serverTimeMS: Int?
  /** Host name of the server that processed the request. */
  public var serverUsed: String?
  /** Lets you store custom data in your indices. */
  public var userData: AnyCodable?
  public var hits: [RecommendHit]
  /** Text to search for in an index. */
  public var query: String? = ""
  /** URL-encoded string of all search parameters. */
  public var params: String?

  public init(
    abTestID: Int? = nil, abTestVariantID: Int? = nil, aroundLatLng: String? = nil,
    automaticRadius: String? = nil, exhaustive: Exhaustive? = nil,
    exhaustiveFacetsCount: Bool? = nil, exhaustiveNbHits: Bool? = nil, exhaustiveTypo: Bool? = nil,
    facets: [String: [String: Int]]? = nil, facetsStats: [String: FacetsStats]? = nil,
    hitsPerPage: Int = 20, index: String? = nil, indexUsed: String? = nil, message: String? = nil,
    nbHits: Int, nbPages: Int, nbSortedHits: Int? = nil, page: Int = 0, parsedQuery: String? = nil,
    processingTimeMS: Int, processingTimingsMS: AnyCodable? = nil, queryAfterRemoval: String? = nil,
    redirect: Redirect? = nil, renderingContent: RenderingContent? = nil, serverTimeMS: Int? = nil,
    serverUsed: String? = nil, userData: AnyCodable? = nil, hits: [RecommendHit],
    query: String? = "", params: String? = nil
  ) {
    self.abTestID = abTestID
    self.abTestVariantID = abTestVariantID
    self.aroundLatLng = aroundLatLng
    self.automaticRadius = automaticRadius
    self.exhaustive = exhaustive
    self.exhaustiveFacetsCount = exhaustiveFacetsCount
    self.exhaustiveNbHits = exhaustiveNbHits
    self.exhaustiveTypo = exhaustiveTypo
    self.facets = facets
    self.facetsStats = facetsStats
    self.hitsPerPage = hitsPerPage
    self.index = index
    self.indexUsed = indexUsed
    self.message = message
    self.nbHits = nbHits
    self.nbPages = nbPages
    self.nbSortedHits = nbSortedHits
    self.page = page
    self.parsedQuery = parsedQuery
    self.processingTimeMS = processingTimeMS
    self.processingTimingsMS = processingTimingsMS
    self.queryAfterRemoval = queryAfterRemoval
    self.redirect = redirect
    self.renderingContent = renderingContent
    self.serverTimeMS = serverTimeMS
    self.serverUsed = serverUsed
    self.userData = userData
    self.hits = hits
    self.query = query
    self.params = params
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case abTestID
    case abTestVariantID
    case aroundLatLng
    case automaticRadius
    case exhaustive
    case exhaustiveFacetsCount
    case exhaustiveNbHits
    case exhaustiveTypo
    case facets
    case facetsStats = "facets_stats"
    case hitsPerPage
    case index
    case indexUsed
    case message
    case nbHits
    case nbPages
    case nbSortedHits
    case page
    case parsedQuery
    case processingTimeMS
    case processingTimingsMS
    case queryAfterRemoval
    case redirect
    case renderingContent
    case serverTimeMS
    case serverUsed
    case userData
    case hits
    case query
    case params
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(abTestID, forKey: .abTestID)
    try container.encodeIfPresent(abTestVariantID, forKey: .abTestVariantID)
    try container.encodeIfPresent(aroundLatLng, forKey: .aroundLatLng)
    try container.encodeIfPresent(automaticRadius, forKey: .automaticRadius)
    try container.encodeIfPresent(exhaustive, forKey: .exhaustive)
    try container.encodeIfPresent(exhaustiveFacetsCount, forKey: .exhaustiveFacetsCount)
    try container.encodeIfPresent(exhaustiveNbHits, forKey: .exhaustiveNbHits)
    try container.encodeIfPresent(exhaustiveTypo, forKey: .exhaustiveTypo)
    try container.encodeIfPresent(facets, forKey: .facets)
    try container.encodeIfPresent(facetsStats, forKey: .facetsStats)
    try container.encode(hitsPerPage, forKey: .hitsPerPage)
    try container.encodeIfPresent(index, forKey: .index)
    try container.encodeIfPresent(indexUsed, forKey: .indexUsed)
    try container.encodeIfPresent(message, forKey: .message)
    try container.encode(nbHits, forKey: .nbHits)
    try container.encode(nbPages, forKey: .nbPages)
    try container.encodeIfPresent(nbSortedHits, forKey: .nbSortedHits)
    try container.encode(page, forKey: .page)
    try container.encodeIfPresent(parsedQuery, forKey: .parsedQuery)
    try container.encode(processingTimeMS, forKey: .processingTimeMS)
    try container.encodeIfPresent(processingTimingsMS, forKey: .processingTimingsMS)
    try container.encodeIfPresent(queryAfterRemoval, forKey: .queryAfterRemoval)
    try container.encodeIfPresent(redirect, forKey: .redirect)
    try container.encodeIfPresent(renderingContent, forKey: .renderingContent)
    try container.encodeIfPresent(serverTimeMS, forKey: .serverTimeMS)
    try container.encodeIfPresent(serverUsed, forKey: .serverUsed)
    try container.encodeIfPresent(userData, forKey: .userData)
    try container.encode(hits, forKey: .hits)
    try container.encodeIfPresent(query, forKey: .query)
    try container.encodeIfPresent(params, forKey: .params)
  }
}
