// you may assume that the array will always have a null element at the 0-th index
function isMaxHeap(array, idx=1) {
    let isComplete = array.every(ele => ele !== undefined);

    if (array[idx] === undefined) return true;
    let leftIdx = idx * 2;
    let rightIdx = idx * 2 + 1;
    let leftValue = array[leftIdx];
    let rightValue = array[rightIdx];

    if (leftValue === undefined) leftValue = -Infinity;
    if (rightValue === undefined) rightValue = -Infinity;

    let leftIsMaxHeap = isMaxHeap(array, leftIdx);
    let rightIsMaxHeap = isMaxHeap(array, rightIdx);

    return array[idx] > leftValue && array[idx] > rightValue && leftIsMaxHeap && rightIsMaxHeap && isComplete;
}


module.exports = {
    isMaxHeap
};