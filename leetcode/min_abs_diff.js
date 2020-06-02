const minimumAbsDifference = function (arr) {
    arr.sort((x, y) => x - y);
    let min = Infinity;
    const results = [];

    for (let i = 0; i < arr.length - 1; i++) {
        let diff = arr[i + 1] - arr[i];
        if (diff < min) min = diff;
    }

    for (let i = 0; i < arr.length - 1; i++) {
        let diff = arr[i + 1] - arr[i];
        if (diff === min) results.push([arr[i], arr[i + 1]]);
    }

    return results;
};

console.log(minimumAbsDifference([4, 2, 1, 3])) // => [[1,2],[2,3],[3,4]];
console.log(minimumAbsDifference([1, 3, 6, 10, 15])) // => [[1,3]];
console.log(minimumAbsDifference([3, 8, -10, 23, 19, -4, -14, 27])) // => [[-14,-10],[19,23],[23,27]];