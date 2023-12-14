//
// UpdatedAtWithObjectIdResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Response, taskID, unique object identifier, and an update timestamp.
public struct UpdatedAtWithObjectIdResponse: Codable, JSONEncodable, Hashable {

  /** Unique identifier of a task. A successful API response means that a task was added to a queue. It might not run immediately. You can check the task's progress with the `task` operation and this `taskID`.  */
  public var taskID: Int64?
  /** Timestamp of the last update in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format. */
  public var updatedAt: String?
  /** Unique object identifier. */
  public var objectID: String?

  public init(taskID: Int64? = nil, updatedAt: String? = nil, objectID: String? = nil) {
    self.taskID = taskID
    self.updatedAt = updatedAt
    self.objectID = objectID
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case taskID
    case updatedAt
    case objectID
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(taskID, forKey: .taskID)
    try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    try container.encodeIfPresent(objectID, forKey: .objectID)
  }
}
