const relativeSortArray = function (arr1, arr2) {
    const hash = {};
    const solution = [];
    const rest = [];

    for (let i of arr2) {
        hash[i] = 0;
    }

    for (let j of arr1) {
        if (hash[j] >= 0) {
            hash[j]++;
        } else {
            rest.push(j);
        }
    }

    for (let val of arr2) {
        for (let i = 0; i < hash[val]; i++) {
            solution.push(val);
        }
    }

    return [...solution, ...rest.sort((a, b) => a - b)];
};

console.log(relativeSortArray([2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19], [2, 1, 4, 3, 9, 6])) // => [2,2,2,1,4,3,3,9,6,7,19];
console.log(relativeSortArray([2, 3, 1, 8, 9], [3, 9, 8])) // => [3,9,8,1,2];