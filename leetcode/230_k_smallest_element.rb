def kth_smallest(root, k)
#     stack = []
    
#     while true
#         while root
#             stack << root
#             root = root.left
#         end
#         root = stack.pop
#         k -= 1
#         if k == 0
#             return root.val
#         end
#         root = root.right
#     end
    nums = inorder(root, [])
    nums[k - 1]
end

def inorder(root, arr)
    return arr if !root
    inorder(root.left, arr)
    arr << root.val
    inorder(root.right, arr)
    arr
end