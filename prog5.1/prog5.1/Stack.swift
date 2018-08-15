import Foundation
/**
 A stack of objects
 
 */
class Stack<T>: LinkedList<T> {
    
    /**
     Stack desription - adds a string indicating the
     container is a queue before invoking super's description
     
     - returns: String String representation of the queue
     */
    
    override var description: String {
        return "(Stack)"+super.description+"<-->"
    }
    
    override init(list: LinkedList<T>? = nil) {
        super.init(list: list)
    }
    
    /**
     Puts an an object at the start of the queue
     
     - parameter object: Object to put in the queue.
     */
    func push(object: T) {
        // Use inherited method to add object
        // to the list
        super.add(object: object)
    }
    
    /**
     Gets an an object from the start of the stack
     
     - returns: T? Object removed from the start of the queue,
     nil if queue is empy.
     */
    func pop() -> T? {
        // If head points to a non-nil node,
        // remove that node and return its
        // object
        if let n = tail {
            //Use inherited method to remove
            //node from the list
            super.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}

