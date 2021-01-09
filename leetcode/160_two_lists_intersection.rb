def getIntersectionNode(headA, headB)
    return nil if !headA || !headB
    p1 = headA
    p2 = headB
    
    while p1 != p2
       if p1
           p1 = p1.next
       else
           p1 = headB
       end
        
        if p2
            p2 = p2.next
        else
            p2 = headA
        end
    end
    
    p1
end