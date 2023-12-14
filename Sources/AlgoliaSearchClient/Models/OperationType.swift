//
// OperationType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Operation to perform (_move_ or _copy_).
public enum OperationType: String, Codable, CaseIterable {
  case move = "move"
  case copy = "copy"
}
