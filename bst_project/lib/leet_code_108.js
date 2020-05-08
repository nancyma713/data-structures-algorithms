// View the full problem and run the test cases at:
//  https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/

// Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

// For this problem, a height - balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

class TreeNode {
    constructor(val) {
        this.val = val;
        this.left = null;
        this.right = null;
    }
}

function sortedArrayToBST(nums) {
    if (!nums.length) return null;

    let mid = Math.floor(nums.length / 2);
    let root = new TreeNode(nums[mid]);
    let left = sortedArrayToBST(nums.slice(0, mid));
    let right = sortedArrayToBST(nums.slice(mid + 1));
    root.left = left;
    root.right = right;

    return root;
}