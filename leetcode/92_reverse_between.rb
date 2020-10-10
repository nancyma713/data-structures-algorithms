def reverse_between(head, m, n)
    return nil if !head
    
    curr = head
    prev = nil
    
    while m > 1
        prev = curr
        curr = curr.next
        m -= 1
        n -= 1
    end
    
    conn = prev
    tail = curr
    third = nil
    
    while n > 0
        third = curr.next
        curr.next = prev
        prev = curr
        curr = third
        n -= 1
    end
    
    if conn
        conn.next = prev
    else
        head = prev
    end
    
    tail.next = curr
    head
end