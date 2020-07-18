var minMutation = function (start, end, bank) {
    let set = new Set(bank);
    if (!set.has(end)) return -1;
    let visited = new Set();
    visited.add(start);

    let queue = [start];
    let count = 1;

    while (queue.length) {
        let size = queue.length;

        for (let i = 0; i < size; i++) {
            const node = queue.shift();
            if (one(node, end)) return count;
            set.forEach(x => {
                if (!visited.has(x) && one(node, x)) {
                    queue.push(x);
                    visited.add(x);
                }
            })
        }
        count++;
    }

    return -1;
};

const one = function (a, b) {
    let count = 0;
    for (let i = 0; i < a.length; i++) {
        if (a[i] !== b[i]) {
            count++;
        }
    }
    return count === 1;
}

console.log(minMutation("AACCGGTT", "AACCGGTA", ["AACCGGTA"])) // 1
console.log(minMutation("AACCGGTT", "AAACGGTA", ["AACCGGTA", "AACCGCTA", "AAACGGTA"])) // 2
console.log(minMutation("AAAAACCC", "AACCCCCC", ["AAAACCCC", "AAACCCCC", "AACCCCCC"])) // 3