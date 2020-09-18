def rotate_right(head, k)
    return head if !head || !head.next || k == 0
    
    length = 0
    cur = head
    tail = nil
    
    while cur
        length += 1
        tail = cur if cur.next.nil?
        cur = cur.next
    end
    
    k = k % length
    return head if k == 0
    new_head = head
    (length - k - 1).times do
        new_head = new_head.next
    end
    
    tail.next = head
    head = new_head.next
    new_head.next = nil
    head
end