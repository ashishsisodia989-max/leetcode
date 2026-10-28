
// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result:[Int] = []
    
    func inorder(_ node: TreeNode?) {
        guard let node = node else { return }
        
        inorder(node.left)
        result.append(node.val)
        inorder(node.right)
    }
    inorder(root)
    return result
}


let root = TreeNode(1, TreeNode(2,TreeNode(4),TreeNode(5,TreeNode(6),TreeNode(7))),TreeNode(3,nil,TreeNode(8,TreeNode(9),nil)))

let result = inorderTraversal(root)

let test2 = TreeNode(
    1,
    nil,
    TreeNode(2, TreeNode(3), nil)
)

print(solution.inorderTraversal(test2))
