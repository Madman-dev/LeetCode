/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        // 빈 배열
        var array = [ListNode?]()

        // input값을 node로 설정
        var node: ListNode? = head

        while node != nil {
            array.append(node)
            // 현재 node의 다음 값을 검색대에 올린다!
            node = node?.next
        }

        return array[array.count/2]
    }
}