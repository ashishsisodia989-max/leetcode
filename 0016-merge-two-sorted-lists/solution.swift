
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

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummy = ListNode(0)
    var current = dummy
    
    var l1 = l1, l2 = l2
    
    while l1 != nil && l2 != nil {
        if l1!.val < l2!.val {
            current.next = l1
            l1.next = l1!.next
        } else {
            current.next = l2
            l2.next = l2!.next
        }
        current = current.next!
    }
    
    if l1 != nil {
        current.next = l1
    } else {
        current.next = l2
    }
    return dummy.next
    
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

//Time: O(n + m)
//Space: O(1) extra space
