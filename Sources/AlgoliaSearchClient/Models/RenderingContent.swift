//
// RenderingContent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

#if canImport(AnyCodable)
  import AnyCodable
#endif

/// Extra content for the search UI, for example, to control the [ordering and display of facets](https://www.algolia.com/doc/guides/managing-results/rules/merchandising-and-promoting/how-to/merchandising-facets/#merchandise-facets-and-their-values-in-the-manual-editor). You can set a default value and dynamically override it with [Rules](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/).
public struct RenderingContent: Codable, JSONEncodable, Hashable {

  public var facetOrdering: FacetOrdering?

  public init(facetOrdering: FacetOrdering? = nil) {
    self.facetOrdering = facetOrdering
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
    case facetOrdering
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(facetOrdering, forKey: .facetOrdering)
  }
}
