const distributeCandies = function (candies, num_people) {
    const result = new Array(num_people).fill(0);
    let candiesGiven = 0;

    while (candies > 0) {
        result[candiesGiven % num_people] += Math.min(candiesGiven + 1, candies);
        candiesGiven += 1;
        candies -= candiesGiven;
    }
    return result;
};

console.log(distributeCandies(7, 4)) // => [1,2,3,1];
console.log(distributeCandies(10, 3)) // => [5,2,3];
console.log(distributeCandies(13, 2)) // => [7,6];