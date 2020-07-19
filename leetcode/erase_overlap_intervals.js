var eraseOverlapIntervals = function (intervals) {
    let count = 0;

    if (intervals.length < 1) return count;
    intervals.sort((x, y) => x[0] - y[0]);

    let slow = 0;
    let fast = 1;

    while (fast < intervals.length) {
        if (intervals[fast][0] < intervals[slow][1]) {
            count++;

            if (intervals[fast][1] < intervals[slow][1]) {
                slow = fast;
            }
        } else {
            slow = fast;
        }
        fast++;
    }

    return count;
};

console.log(eraseOverlapIntervals([[1, 2], [2, 3], [3, 4], [1, 3]])) // 1
console.log(eraseOverlapIntervals([[1, 2], [1, 2], [1, 2]])) // 2
console.log(eraseOverlapIntervals([[1, 2], [2, 3]])) // 0