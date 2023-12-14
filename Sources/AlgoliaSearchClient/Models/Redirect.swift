//
// Redirect.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// [Redirect results to a URL](https://www.algolia.com/doc/guides/managing-results/rules/merchandising-and-promoting/how-to/redirects/).
public struct Redirect: Codable, JSONEncodable, Hashable {

  public var index: [RedirectRuleIndexMetadata]?

  public init(index: [RedirectRuleIndexMetadata]? = nil) {
    self.index = index
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case index
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(index, forKey: .index)
  }
}
