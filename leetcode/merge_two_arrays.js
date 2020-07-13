const merge = function (nums1, m, nums2, n) {
    let updateIdx = m + n - 1;
    m--;
    n--;

    while (n >= 0) {
        if (nums1[m] > nums2[n]) {
            nums1[updateIdx] = nums1[m];
            nums1[m] = 0;
            m--;
        } else {
            nums1[updateIdx] = nums2[n];
            n--;
        }
        updateIdx--;
    }
    return nums1;
};

console.log(merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3)); // [1, 2, 2, 3, 5, 6]
console.log(merge([0], 0, [2, 5, 6], 3)); // [2, 5, 6]
console.log(merge([0], 0, [1], 1)); // [1]