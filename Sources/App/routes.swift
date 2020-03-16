import Vapor
import CoreImage



/// Register your application's routes here.
public func routes(_ router: Router) throws {
   router.get("/") { _ in
       return "Hello API"
   }
    
    if #available(OSX 10.13, *) {
        router.post(ClassificationRequest.self, at: "/classify") { (request, classificationRequest) -> String in
            let image = classificationRequest.image
            let ciImage = CIImage(data: image.data)
            // TODO: Classify contents of the image.
            return "success"
        }
    }
    
    
}
