const frequencySort = function (s) {
    const hash = {};
    let str = "";

    for (let i = 0; i < s.length; i++) {
        if (!hash[s[i]]) hash[s[i]] = 0;
        hash[s[i]] += 1;
    }

    Object.keys(hash).sort((x, y) => hash[y] - hash[x]).forEach(key => {
        for (let i = 0; i < hash[key]; i++) {
            str += key;
        }
    })

    return str;
};

console.log(frequencySort("tree")) // => "eetr";
console.log(frequencySort("cccaaa")) // => "cccaaa";
console.log(frequencySort("Aabb")) // => "bbAa";