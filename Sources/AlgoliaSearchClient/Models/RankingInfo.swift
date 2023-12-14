//
// RankingInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct RankingInfo: Codable, JSONEncodable, Hashable {

  /** This field is reserved for advanced usage. */
  public var filters: Int
  /** Position of the most important matched attribute in the attributes to index list. */
  public var firstMatchedWord: Int
  /** Distance between the geo location in the search query and the best matching geo location in the record, divided by the geo precision (in meters). */
  public var geoDistance: Int
  /** Precision used when computing the geo distance, in meters. */
  public var geoPrecision: Int?
  public var matchedGeoLocation: MatchedGeoLocation?
  public var personalization: Personalization?
  /** Number of exactly matched words. */
  public var nbExactWords: Int
  /** Number of typos encountered when matching the record. */
  public var nbTypos: Int
  /** Present and set to true if a Rule promoted the hit. */
  public var promoted: Bool
  /** When the query contains more than one word, the sum of the distances between matched words (in meters). */
  public var proximityDistance: Int?
  /** Custom ranking for the object, expressed as a single integer value. */
  public var userScore: Int
  /** Number of matched words, including prefixes and typos. */
  public var words: Int
  /** Wether the record are promoted by the re-ranking strategy. */
  public var promotedByReRanking: Bool?

  public init(
    filters: Int, firstMatchedWord: Int, geoDistance: Int, geoPrecision: Int? = nil,
    matchedGeoLocation: MatchedGeoLocation? = nil, personalization: Personalization? = nil,
    nbExactWords: Int, nbTypos: Int, promoted: Bool, proximityDistance: Int? = nil, userScore: Int,
    words: Int, promotedByReRanking: Bool? = nil
  ) {
    self.filters = filters
    self.firstMatchedWord = firstMatchedWord
    self.geoDistance = geoDistance
    self.geoPrecision = geoPrecision
    self.matchedGeoLocation = matchedGeoLocation
    self.personalization = personalization
    self.nbExactWords = nbExactWords
    self.nbTypos = nbTypos
    self.promoted = promoted
    self.proximityDistance = proximityDistance
    self.userScore = userScore
    self.words = words
    self.promotedByReRanking = promotedByReRanking
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case filters
    case firstMatchedWord
    case geoDistance
    case geoPrecision
    case matchedGeoLocation
    case personalization
    case nbExactWords
    case nbTypos
    case promoted
    case proximityDistance
    case userScore
    case words
    case promotedByReRanking
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(filters, forKey: .filters)
    try container.encode(firstMatchedWord, forKey: .firstMatchedWord)
    try container.encode(geoDistance, forKey: .geoDistance)
    try container.encodeIfPresent(geoPrecision, forKey: .geoPrecision)
    try container.encodeIfPresent(matchedGeoLocation, forKey: .matchedGeoLocation)
    try container.encodeIfPresent(personalization, forKey: .personalization)
    try container.encode(nbExactWords, forKey: .nbExactWords)
    try container.encode(nbTypos, forKey: .nbTypos)
    try container.encode(promoted, forKey: .promoted)
    try container.encodeIfPresent(proximityDistance, forKey: .proximityDistance)
    try container.encode(userScore, forKey: .userScore)
    try container.encode(words, forKey: .words)
    try container.encodeIfPresent(promotedByReRanking, forKey: .promotedByReRanking)
  }
}
