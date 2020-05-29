const duplicateZeros = function (arr) {
    const length = arr.length;
    let i = 0;
    let j = length - 1;

    while (i < length - 1) {
        if (arr[i] === 0) {
            while (j > i) {
                arr[j] = arr[j - 1];
                j--;
            }
            arr[i + 1] = 0;
            i += 2;
            j = length - 1;
        } else {
            i += 1;
        }
    }
    return arr;
};

console.log(duplicateZeros([1, 0, 2, 3, 0, 4, 5, 0])) // => [1, 0, 0, 2, 3, 0, 0, 4];
console.log(duplicateZeros([1, 2, 3])) // => null;
console.log(duplicateZeros([0, 0, 0, 0, 0])) // => [0, 0, 0, 0, 0];