def remove_nth_from_end(head, n)
    dummy = ListNode.new()
    dummy.next = head
    slow = dummy
    fast = dummy
    
    while n >= 0
        fast = fast.next
        n -= 1
    end
    
    while fast
        slow = slow.next
        fast = fast.next
    end
    slow.next = slow.next.next
    
    dummy.next
end