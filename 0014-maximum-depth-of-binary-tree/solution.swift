class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    
    let leftNode = maxDepth(root.left)
    let rightDepth = maxDepth(root.right)
    
    return 1 + max(leftNode, rightDepth)
}

//Time: O(n) — every node is visited once.
//Space: O(h) — recursion stack, where h is the tree height.
//
//If the tree is completely skewed, the recursion space can become O(n).
