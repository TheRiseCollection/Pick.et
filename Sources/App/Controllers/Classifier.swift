//
//  Classifier.swift
//  App
//
//  Created by Joshua Paulsen on 3/16/20.
//

@available(OSX 10.13, *)
struct Classifier {
  
}

import Foundation
import CoreImage
import Vision


func convertCIImageToCGImage(image: CIImage) -> CGImage {
    let context = CIContext(options: nil)
    return context.createCGImage(image, from: image.extent)!
}


