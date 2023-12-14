//
// ListDestinationsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct ListDestinationsResponse: Codable, JSONEncodable, Hashable {

  public var destinations: [Destination]
  public var pagination: Pagination

  public init(destinations: [Destination], pagination: Pagination) {
    self.destinations = destinations
    self.pagination = pagination
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case destinations
    case pagination
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(destinations, forKey: .destinations)
    try container.encode(pagination, forKey: .pagination)
  }
}
