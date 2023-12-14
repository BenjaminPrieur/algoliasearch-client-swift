//
// TagFilters.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// [Filter hits by tags](https://www.algolia.com/doc/api-reference/api-parameters/tagFilters/).
public enum TagFilters: Codable, JSONEncodable, Hashable {
  case string(String)
  case arrayOfMixedSearchFilters([MixedSearchFilters])

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    switch self {
    case .string(let value):
      try container.encode(value)
    case .arrayOfMixedSearchFilters(let value):
      try container.encode(value)
    }
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if let value = try? container.decode(String.self) {
      self = .string(value)
    } else if let value = try? container.decode([MixedSearchFilters].self) {
      self = .arrayOfMixedSearchFilters(value)
    } else {
      throw DecodingError.typeMismatch(
        Self.Type.self,
        .init(
          codingPath: decoder.codingPath,
          debugDescription: "Unable to decode instance of TagFilters"))
    }
  }
}
