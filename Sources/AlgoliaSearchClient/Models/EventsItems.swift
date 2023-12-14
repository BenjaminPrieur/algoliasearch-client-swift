//
// EventsItems.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public enum EventsItems: Codable, JSONEncodable, Hashable {
  case addedToCartObjectIDs(AddedToCartObjectIDs)
  case addedToCartObjectIDsAfterSearch(AddedToCartObjectIDsAfterSearch)
  case clickedFilters(ClickedFilters)
  case clickedObjectIDs(ClickedObjectIDs)
  case clickedObjectIDsAfterSearch(ClickedObjectIDsAfterSearch)
  case convertedFilters(ConvertedFilters)
  case convertedObjectIDs(ConvertedObjectIDs)
  case convertedObjectIDsAfterSearch(ConvertedObjectIDsAfterSearch)
  case purchasedObjectIDs(PurchasedObjectIDs)
  case purchasedObjectIDsAfterSearch(PurchasedObjectIDsAfterSearch)
  case viewedFilters(ViewedFilters)
  case viewedObjectIDs(ViewedObjectIDs)

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    switch self {
    case .addedToCartObjectIDs(let value):
      try container.encode(value)
    case .addedToCartObjectIDsAfterSearch(let value):
      try container.encode(value)
    case .clickedFilters(let value):
      try container.encode(value)
    case .clickedObjectIDs(let value):
      try container.encode(value)
    case .clickedObjectIDsAfterSearch(let value):
      try container.encode(value)
    case .convertedFilters(let value):
      try container.encode(value)
    case .convertedObjectIDs(let value):
      try container.encode(value)
    case .convertedObjectIDsAfterSearch(let value):
      try container.encode(value)
    case .purchasedObjectIDs(let value):
      try container.encode(value)
    case .purchasedObjectIDsAfterSearch(let value):
      try container.encode(value)
    case .viewedFilters(let value):
      try container.encode(value)
    case .viewedObjectIDs(let value):
      try container.encode(value)
    }
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if let value = try? container.decode(AddedToCartObjectIDs.self) {
      self = .addedToCartObjectIDs(value)
    } else if let value = try? container.decode(AddedToCartObjectIDsAfterSearch.self) {
      self = .addedToCartObjectIDsAfterSearch(value)
    } else if let value = try? container.decode(ClickedFilters.self) {
      self = .clickedFilters(value)
    } else if let value = try? container.decode(ClickedObjectIDs.self) {
      self = .clickedObjectIDs(value)
    } else if let value = try? container.decode(ClickedObjectIDsAfterSearch.self) {
      self = .clickedObjectIDsAfterSearch(value)
    } else if let value = try? container.decode(ConvertedFilters.self) {
      self = .convertedFilters(value)
    } else if let value = try? container.decode(ConvertedObjectIDs.self) {
      self = .convertedObjectIDs(value)
    } else if let value = try? container.decode(ConvertedObjectIDsAfterSearch.self) {
      self = .convertedObjectIDsAfterSearch(value)
    } else if let value = try? container.decode(PurchasedObjectIDs.self) {
      self = .purchasedObjectIDs(value)
    } else if let value = try? container.decode(PurchasedObjectIDsAfterSearch.self) {
      self = .purchasedObjectIDsAfterSearch(value)
    } else if let value = try? container.decode(ViewedFilters.self) {
      self = .viewedFilters(value)
    } else if let value = try? container.decode(ViewedObjectIDs.self) {
      self = .viewedObjectIDs(value)
    } else {
      throw DecodingError.typeMismatch(
        Self.Type.self,
        .init(
          codingPath: decoder.codingPath,
          debugDescription: "Unable to decode instance of EventsItems"))
    }
  }
}
