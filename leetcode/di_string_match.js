const diStringMatch = function (S) {
    let A = [];
    let low = 0;
    let high = S.length;

    for (let char of S) {
        if (char === "I") {
            A.push(low);
            low += 1;
        } else {
            A.push(high);
            high -= 1;
        }
    }
    return A.concat([low]);
};

console.log(diStringMatch("IDID")) // => [0,4,1,3,2];
console.log(diStringMatch("III")) // => [0,1,2,3];
console.log(diStringMatch("DDI")) // => [3,2,0,1];