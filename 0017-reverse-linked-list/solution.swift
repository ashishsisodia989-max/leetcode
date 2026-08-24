
class ListNode {
    var val: Int
    var next: ListNode?
    init() {
        self.val = 0
        self.next = nil
    }
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

func printList(_ head: ListNode?, _ name: String) {
    print("\(name): ", terminator: "")
    var current = head
    while current != nil {
        print(current!.val, terminator: " -> ")
        current = current!.next
    }
    print("\n")
}

let list1 = ListNode(1)
list1.next = ListNode(2)
list1.next?.next = ListNode(3)
list1.next?.next?.next = ListNode(4)
list1.next?.next?.next?.next = ListNode(5)
print("Original List:")
printList(list1, "Original List")

func reverseList(_ head: ListNode?) -> ListNode? {
    guard let h = head else { return nil }
    var prev: ListNode?
    var current = head
    var next = head?.next
    
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    return prev
}
