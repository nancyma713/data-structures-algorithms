// Find Missing Nums

function missing(arr) {
    if (arr.length <= 1) return [];

    let res = [];
    let numsExist = {};

    for (let i = 0; i < arr.length; i++) {
        let num = arr[i];
        numsExist[num] = true;
    }

    for (let i = arr[0]; i < arr[arr.length - 1]; i++) {
        if (!numsExist[i]) {
            res.push(i);
        }
    }
    
    return res;
}

console.log(missing([1, 2, 3, 5, 6, 7, 10]))
console.log(missing([1, 2, 5, 6, 7, 14]))