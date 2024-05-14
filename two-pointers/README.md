## Two Pointers

Two Pointer is a commonly used technique to solve Array problems.
They act as indexPoints within an array. They have two values which moves along an iterable.

- Usually one would start from the zero based index and the other at the very end.
- While loop to iterate the pointers until they are equal
- each iteration will increment or decrement the pointers to each other.
The code time complexity remains O(1) and a linear runtime.

```swift
class twoPointer {
	func solveEquation(problem: [Int]) {
		var left: Int = 0
		var right = problem.count
		
		while left < right {
			// some logic
			left += 1
			right -= 1
		}
	}
}
```

### Palindrome
```swift
func isPalidrome(string: String) -> Bool {
	let characters: Array<string>
	var left: Int = 0
	var right: Int = characters.count - 1

	while left < right {
		if characters[left] != characters[right] {
			return false
		}
		left += 1
		right -= 1
	}
	return true
}
```