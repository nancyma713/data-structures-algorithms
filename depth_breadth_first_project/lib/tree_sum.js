function treeSum(root) {
    if (!root) return 0;

    let left = treeSum(root.left);
    let right = treeSum(root.right);

    return left + root.val + right;
}


module.exports = {
    treeSum
};