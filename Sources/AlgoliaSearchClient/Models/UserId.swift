//
// UserId.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Unique user ID.
public struct UserId: Codable, JSONEncodable, Hashable {

  static let userIDRule = StringRule(
    minLength: nil, maxLength: nil, pattern: "^[a-zA-Z0-9 \\-*.]+$")
  /** userID of the user. */
  public var userID: String
  /** Cluster to which the user is assigned. */
  public var clusterName: String
  /** Number of records belonging to the user. */
  public var nbRecords: Int
  /** Data size used by the user. */
  public var dataSize: Int

  public init(userID: String, clusterName: String, nbRecords: Int, dataSize: Int) {
    self.userID = userID
    self.clusterName = clusterName
    self.nbRecords = nbRecords
    self.dataSize = dataSize
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case userID
    case clusterName
    case nbRecords
    case dataSize
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(userID, forKey: .userID)
    try container.encode(clusterName, forKey: .clusterName)
    try container.encode(nbRecords, forKey: .nbRecords)
    try container.encode(dataSize, forKey: .dataSize)
  }
}
