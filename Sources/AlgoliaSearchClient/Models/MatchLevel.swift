//
// MatchLevel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Indicates how well the attribute matched the search query.
public enum MatchLevel: String, Codable, CaseIterable {
  case _none = "none"
  case partial = "partial"
  case full = "full"
}
