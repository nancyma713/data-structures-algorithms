var countBattleships = function (board) {
    let count = 0;

    for (let i = 0; i < board.length; i++) {
        for (let j = 0; j < board[0].length; j++) {
            if (board[i][j] === "X") {
                if (i === 0 && j === 0) {
                    count++;
                } else if (i === 0) {
                    if (board[i][j - 1] === ".") count++;
                } else if (j === 0) {
                    if (board[i - 1][j] === ".") count++;
                } else {
                    if (board[i - 1][j] === "." && board[i][j - 1] === ".") count++;
                }
            }
        }
    }
    return count;
};