def delete_duplicates(head)
    dummy = ListNode.new()
    prev = dummy
    dummy.next = head
    
    while head && head.next
        if head.val == head.next.val
            while head && head.next && (head.val == head.next.val)
                head = head.next
            end
            head = head.next
            prev.next = head
        else
            prev = prev.next
            head = head.next
        end
    end
    
    dummy.next
end