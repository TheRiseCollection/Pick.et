import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
   router.get("/") { _ in
       return "<3"
   }
}
