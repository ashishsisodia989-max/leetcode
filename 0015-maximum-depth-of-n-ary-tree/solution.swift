
public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}


func maxDepth(_ root: Node?) -> Int {
    guard let root = root else { return 0 }
    
    var depth = 0
    
    for child in root.children {
        depth = max(depth, maxDepth(child))
    }
    
    return depth + 1
}
