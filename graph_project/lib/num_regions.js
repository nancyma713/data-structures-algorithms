function numRegions(graph) {
    let visited = new Set();
    let count = 0;

    for (let node in graph) {
        if (depthSearch(graph, node, visited)) {
            count++;
        }
    }

    return count;
}

function depthSearch(graph, node, visited) {
    if (visited.has(node)) return false;
    visited.add(node);
    graph[node].forEach(neighbor => depthSearch(graph, neighbor, visited));
    return true;
}

module.exports = {
    numRegions
};