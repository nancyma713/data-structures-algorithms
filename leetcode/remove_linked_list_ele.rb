def remove_elements(head, val)
    while head && head.val == val
        head = head.next
    end
    curr = head
    while curr
        if curr.next && curr.next.val == val
            curr.next = curr.next.next
        else
            curr = curr.next
        end
    end
    head
end