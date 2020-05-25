const canConstruct = function (ransomNote, magazine) {
    const hash = {};

    for (let i = 0; i < magazine.length; i++) {
        if (!hash[magazine[i]]) hash[magazine[i]] = 0;
        hash[magazine[i]] += 1;
    }

    for (let j = 0; j < ransomNote.length; j++) {
        if (hash[ransomNote[j]] && hash[ransomNote[j]] > 0) {
            hash[ransomNote[j]] -= 1;
        } else {
            return false;
        }
    }
    return true;
};

console.log(canConstruct("a", "b")); // => false;
console.log(canConstruct("aa", "ab")); // => false;
console.log(canConstruct("ab", "aab")); // => true;