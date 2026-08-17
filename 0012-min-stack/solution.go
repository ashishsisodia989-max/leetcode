package main

type MinStack struct {
	stack    []int
	minStack []int
}

func Constructor() MinStack {
	return MinStack{
		stack:    []int{},
		minStack: []int{},
	}
}

func (m *MinStack) Push(value int) {
	m.stack = append(m.stack, value)

	if len(m.minStack) == 0 || value <= m.minStack[len(m.minStack)-1] {
		m.minStack = append(m.minStack, value)
	}
}

func (m *MinStack) Pop() {
	value := m.stack[len(m.stack)-1]
	m.stack = m.stack[:len(m.stack)-1]

	if value == m.minStack[len(m.minStack)-1] {
		m.minStack = m.minStack[:len(m.minStack)-1]
	}
}

func (m *MinStack) Top() int {
	return m.stack[len(m.stack)-1]
}

func (m *MinStack) GetMin() int {
	return m.minStack[len(m.minStack)-1]
}
