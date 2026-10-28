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

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var p = l1
        var q = l2
        var carry = 0
        var dummy = ListNode(0)
        var current = dummy
        
        while p != nil || q != nil || carry != 0 {
            var sum = carry
            
            if let pVal = p?.val {
                sum += pVal
                p = p?.next
            }
            
            if let qVal = q?.val {
                sum += qVal
                q = q?.next
            }
            
            carry = sum / 10
            current?.next = ListNode(sum % 10)
            current = current.next!
        }
        return dummy.next
    }
}


// Convert an array into a linked list
func makeList(_ values: [Int]) -> ListNode? {
    let dummy = ListNode(0)
    var current = dummy

    for value in values {
        current.next = ListNode(value)
        current = current.next!
    }

    return dummy.next
}

func toArray(_ head: ListNode?) -> [Int] {
    var result = [Int]()
    var current = head

    while let node = current {
        result.append(node.val)
        current = node.next
    }

    return result
}

// Test the solution
let solution = Solution()

let l1 = makeList([2, 4, 3])
let l2 = makeList([5, 6, 4])

let result = solution.addTwoNumbers(l1, l2)

print(toArray(result))  // [7, 0, 8]
