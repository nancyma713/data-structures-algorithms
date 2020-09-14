var maxSubArray = function (nums) {
    let maxSum = nums[0];
    let currSum = nums[0];

    for (let i = 1; i < nums.length; i++) {
        currSum = Math.max(nums[i], nums[i] + currSum);
        maxSum = Math.max(currSum, maxSum);
    }

    return maxSum;
};