//
// GetTopFiltersNoResultsValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct GetTopFiltersNoResultsValue: Codable, JSONEncodable, Hashable {

  /** Attribute name. */
  public var attribute: String
  /** Operator. */
  public var _operator: String
  /** Attribute value. */
  public var value: String

  public init(attribute: String, _operator: String, value: String) {
    self.attribute = attribute
    self._operator = _operator
    self.value = value
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case attribute
    case _operator = "operator"
    case value
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(attribute, forKey: .attribute)
    try container.encode(_operator, forKey: ._operator)
    try container.encode(value, forKey: .value)
  }
}
