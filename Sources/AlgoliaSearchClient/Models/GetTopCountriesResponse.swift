//
// GetTopCountriesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct GetTopCountriesResponse: Codable, JSONEncodable, Hashable {

  /** Countries */
  public var countries: [TopCountry]

  public init(countries: [TopCountry]) {
    self.countries = countries
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case countries
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(countries, forKey: .countries)
  }
}
