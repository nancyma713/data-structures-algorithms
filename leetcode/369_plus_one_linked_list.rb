def plus_one(head)
    sentinel = ListNode.new(0)
    sentinel.next = head
    not_nine = sentinel
    
    while head
        if head.val != 9
            not_nine = head
        end
        head = head.next
    end
    
    not_nine.val += 1
    not_nine = not_nine.next
    
    while not_nine
        not_nine.val = 0
        not_nine = not_nine.next
    end
    
    sentinel.val == 0 ? sentinel.next : sentinel
end