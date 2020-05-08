// View the full problem and run the test cases at:
//  https://leetcode.com/problems/balanced-binary-tree/


// Given a binary tree, determine if it is height - balanced.

// For this problem, a height - balanced binary tree is defined as:

// a binary tree in which the left and right subtrees of every node differ in height by no more than 1.

function getHeight(root) {
    if (!root) return -1;

    let left = getHeight(root.left);
    let right = getHeight(root.right);
    return 1 + Math.max(left, right);
}

function isBalanced(root) {
    if (!root) return true;

    let balanced = Math.abs(getHeight(root.left) - getHeight(root.right) < 2);

    return balanced && isBalanced(root.left) && isBalanced(root.right);
}