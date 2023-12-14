//
// ListClustersResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Clusters.
public struct ListClustersResponse: Codable, JSONEncodable, Hashable {

  /** Key-value pairs with cluster names as keys and lists of users with the highest number of records per cluster as values. */
  public var topUsers: [String]

  public init(topUsers: [String]) {
    self.topUsers = topUsers
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case topUsers
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(topUsers, forKey: .topUsers)
  }
}
