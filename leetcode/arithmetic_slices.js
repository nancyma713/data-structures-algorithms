const numberOfArithmeticSlices = function (A) {
    let sum = 0;
    let dp = 0;

    for (let i = 2; i < A.length; i++) {
        if (A[i] - A[i - 1] === A[i - 1] - A[i - 2]) {
            dp += 1;
            sum += dp;
        } else {
            dp = 0;
        }
    }

    return sum;
};

console.log(numberOfArithmeticSlices([1, 2, 3, 4])) // 3
console.log(numberOfArithmeticSlices([1, 2, 3, 4, 7, 8])) // 3
console.log(numberOfArithmeticSlices([1, 2, 3, 6, 7, 8])) // 2