// Days of the week are represented as "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"

// Write a function solution that given a string S representing the day of the week and an integer K between
// 0 and 500, return the day of the week that is K days later.

// S = "Wed", K = 2, return "Fri"
// S = "Sat", K = 23, return "Mon"

// function solution(S, K) {
//     let days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

//     let currIdx = days.indexOf(S);
//     let newIdx = (currIdx + K) % 7;

//     return days[newIdx];
// }

// console.log(solution("Wed", 2)) // => "Fri"
// console.log(solution("Sat", 2)) // => "Mon"
// console.log(solution("Sat", 23)) // => "Mon"

// Two arrs, A and B with N integers each
// Index K is fair if four sums of (A[0]..A[K - 1]), (A[K]..A[N - 1]), (B[0]..B[K - 1]), (B[K]..B[N - 1]) are all equal


function solution(A, B) {
    let count = 0;

    for (let i = 0; i < A.length - 1; i++) {
        let sum1 = sum(A.slice(0, i + 1));

        if (sum(A.slice(i + 1)) !== sum1) {
            continue;
        }
        if (sum(B.slice(0, i + 1)) !== sum1) {
            continue;
        }
        if (sum(B.slice(i + 1)) !== sum1) {
            continue;
        }

        count++;
    }

    return count;
}

function sum(arr) {
    return arr.reduce((a,b) => a + b, 0);
}

console.log(solution([0,4,-1,0,3], [0,-2,5,0,3])) //=> 2
console.log(solution([2,-2,3,-3], [0,0,4,-4])) //=> 1
console.log(solution([3,2,6], [4,1,6])) //=> 0