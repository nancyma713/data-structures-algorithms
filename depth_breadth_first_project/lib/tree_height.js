function treeHeight(root) {
    if (!root) return -1;

    let left = treeHeight(root.left);
    let right = treeHeight(root.right);
    let greater = Math.max(left, right);

    return 1 + greater;
}


module.exports = {
    treeHeight
};