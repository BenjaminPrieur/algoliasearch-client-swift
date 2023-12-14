//
// Action.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Type of batch operation.
public enum Action: String, Codable, CaseIterable {
  case addobject = "addObject"
  case updateobject = "updateObject"
  case partialupdateobject = "partialUpdateObject"
  case partialupdateobjectnocreate = "partialUpdateObjectNoCreate"
  case deleteobject = "deleteObject"
  case delete = "delete"
  case clear = "clear"
}
