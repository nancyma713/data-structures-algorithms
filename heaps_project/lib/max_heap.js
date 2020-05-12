class MaxHeap {
    constructor() {
        this.array = [null];
    }

    getParent(idx) {
        return Math.floor(idx / 2);
    }

    getLeftChild(idx) {
        return idx * 2;
    }

    getRightChild(idx) {
        return idx * 2 + 1;
    }

    siftUp(idx) {
        if (idx === 1) return;

        let parentIdx = this.getParent(idx);

        if (this.array[idx] > (this.array[parentIdx])) {
            [this.array[idx], this.array[parentIdx]] = [this.array[parentIdx], this.array[idx]];
            this.siftUp(parentIdx);
        }
    }

    insert(val) {
        this.array.push(val);
        this.siftUp(this.array.length - 1);
    }

    siftDown(idx) {
        let arr = this.array;
        let leftIdx = this.getLeftChild(idx);
        let rightIdx = this.getRightChild(idx);
        let leftValue = arr[leftIdx];
        let rightValue = arr[rightIdx];

        if (leftValue === undefined) leftValue = -Infinity;
        if (rightValue === undefined) rightValue = -Infinity;

        if (arr[idx] > leftValue && arr[idx] > rightValue) return;

        let swapIdx;
        if (leftValue < rightValue) {
            swapIdx = rightIdx;
        } else {
            swapIdx = leftIdx;
        }

        [arr[idx], arr[swapIdx]] = [arr[swapIdx], arr[idx]];

        this.siftDown(swapIdx);
    }

    deleteMax() {
        if (this.array.length === 1) return null;
        if (this.array.length === 2) return this.array.pop();
        
        let max = this.array[1];
        this.array[1] = this.array.pop();
        this.siftDown(1);
        return max;
    }
}

module.exports = {
    MaxHeap
};