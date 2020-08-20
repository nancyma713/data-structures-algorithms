def max_score(card_points, k)
    # maximize points, take a card from beginning or end, total of k cards
    return 0 if k == 0
    return card_points.sum if k == card_points.length
    
    left = k - 1
    left_sum = card_points[0..left].sum
    right = card_points.length - 1
    right_sum = 0
    
    max_sum = left_sum
    
    while left >= 0
        left_sum -= card_points[left]
        right_sum += card_points[right]
        
        left -= 1
        right -= 1
        
        max_sum = [max_sum, left_sum + right_sum].max
    end
    max_sum
end