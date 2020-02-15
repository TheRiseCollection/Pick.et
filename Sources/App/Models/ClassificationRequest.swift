//
//  ClassificationRequest.swift
//  App
//
//  Created by Joshua Paulsen on 2/15/20.
//

import Vapor

struct ClassificationRequest: Content {
    let image: File
}
