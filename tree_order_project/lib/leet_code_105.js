// View the full problem and run the test cases at:
//  https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/

const { TreeNode } = require('./tree_node.js');


function buildTree(preorder, inorder) {
    if (!preorder.length && !inorder.length) {
        return null;
    }

    let preorderFirst = preorder[0];
    let root = new TreeNode(preorderFirst);
    let rootindex = inorder.indexOf(preorderFirst);

    let leftInOrder = inorder.slice(0, rootindex);
    let rightInOrder = inorder.slice(rootindex + 1);

    let leftPreOrder = preorder.filter(val => leftInOrder.includes(val));
    let rightPreOrder = preorder.filter(val => rightInOrder.includes(val));

    root.left = buildTree(leftPreOrder, leftInOrder);
    root.right = buildTree(rightPreOrder, rightInOrder);

    return root;
}
