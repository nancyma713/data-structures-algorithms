const findComplement = function (num) {
    const str = num.toString(2);
    let complement = '';
    for (let i = 0; i < str.length; i++) {
        let int = parseInt(str[i]);
        if (int === 0) {
            complement += 1;
        } else {
            complement += 0;
        }
    }
    return parseInt(complement, 2);
};

console.log(findComplement(5)); // => 2
console.log(findComplement(1)); // => 0
