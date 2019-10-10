import Foundation

open struct DDTools {
    var text = "Hello, World!"
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
}


open class Person: NSObject {
    
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    open func adds(a: Int, b: Int) -> Int {
        return a + b
    }

}
