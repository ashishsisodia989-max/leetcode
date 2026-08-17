package main

type Node struct {
	Val      int
	Children []*Node
}

func maxDepth(root *Node) int {
	if root == nil {
		return 0
	}

	depth := 0

	for _, child := range root.Children {
		depth = max(depth, maxDepth(child))
	}

	return 1 + depth
}
