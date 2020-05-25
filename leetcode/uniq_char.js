const firstUniqChar = function (s) {
    const hash = {};

    for (let i = 0; i < s.length; i++) {
        if (!hash[s[i]]) hash[s[i]] = 0;
        hash[s[i]] += 1;
    }

    for (let key in hash) {
        if (hash[key] === 1) {
            return s.indexOf(key);
        }
        continue;
    }
    return -1;
};

console.log(firstUniqChar("leetcode")); // => 0;
console.log(firstUniqChar("loveleetcode")); // => 2;