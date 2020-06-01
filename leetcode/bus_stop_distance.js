const distanceBetweenBusStops = function (distance, start, destination) {
    if (start > destination) [start, destination] = [destination, start];
    let first = distance.slice(start, destination);

    let totalSum = distance.reduce((x, y) => x + y);
    let firstSum = first.reduce((x, y) => x + y);
    let secondSum = totalSum - firstSum;

    return Math.min(firstSum, secondSum);
};

console.log(distanceBetweenBusStops([1, 2, 3, 4], 0, 1)) // => 1;
console.log(distanceBetweenBusStops([1, 2, 3, 4], 0, 3)) // => 4;
console.log(distanceBetweenBusStops([2, 2, 3, 8, 7], 2, 4)) // => 11;