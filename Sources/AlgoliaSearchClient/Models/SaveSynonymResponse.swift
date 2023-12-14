//
// SaveSynonymResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

public struct SaveSynonymResponse: Codable, JSONEncodable, Hashable {

  /** Unique identifier of a task. A successful API response means that a task was added to a queue. It might not run immediately. You can check the task's progress with the `task` operation and this `taskID`.  */
  public var taskID: Int64
  /** Timestamp of the last update in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format. */
  public var updatedAt: String
  /** Unique identifier of a synonym object. */
  public var id: String

  public init(taskID: Int64, updatedAt: String, id: String) {
    self.taskID = taskID
    self.updatedAt = updatedAt
    self.id = id
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case taskID
    case updatedAt
    case id
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(taskID, forKey: .taskID)
    try container.encode(updatedAt, forKey: .updatedAt)
    try container.encode(id, forKey: .id)
  }
}
