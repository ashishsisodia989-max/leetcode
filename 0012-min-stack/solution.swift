class MinStack {
    
    private var stack: [Int] = []
    private var minStack: [Int] = []
    init() {
        
    }
    
    func push(_ value: Int) {
        stack.append(value)
        
        if minStack.isEmpty || value <= minStack.last! {
            minStack.append(value
        }
    }
    
    func pop() {
        let value = stack.removeLast()
        if value == minStack.last {
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}


//Your MinStack object will be instantiated and called as such:
let obj = MinStack()
obj.push(value)
obj.pop()
let ret_3: Int = obj.top()
let ret_4: Int = obj.getMin()

