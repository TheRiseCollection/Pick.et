//
//  VNClassificationObservationWithEncodable.swift
//  App
//
//  Created by Joshua Paulsen on 3/22/20.
//

import Vision

@available(OSX 10.13, *)
extension VNClassificationObservation: Encodable {
    enum CodingKeys: String, CodingKey {
        case label
        case score
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(confidence as Float, forKey: .score)
        try container.encode(identifier, forKey: .label)
    }
}
