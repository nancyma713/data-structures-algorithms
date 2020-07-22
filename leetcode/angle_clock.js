const angleClock = function (hour, minutes) {
    let minFraction = minutes / 60;
    let minAngle = minFraction * 360;
    let hourFraction = (hour % 12) / 12;
    let hourAngle = (hourFraction + minFraction / 12) * 360;

    let first = Math.abs(minAngle - hourAngle);
    let second = 360 - first;

    return Math.min(first, second);
};

console.log(angleClock(12, 30)); // 165
console.log(angleClock(3, 30)); // 75
console.log(angleClock(3, 15)); // 7.5
console.log(angleClock(4, 50)); // 155
console.log(angleClock(12, 0)); // 0