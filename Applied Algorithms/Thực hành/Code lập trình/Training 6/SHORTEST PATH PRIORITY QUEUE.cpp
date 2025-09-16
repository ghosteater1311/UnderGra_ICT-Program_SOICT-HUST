#include <iostream>
#include <queue>
#include <climits>
using namespace std;
vector<int> dijkstra(int s, const vector< vector< pair<int, int> > >&adj) {
    priority_queue<pair<int,int>>Q;
    vector<int> d(adj.size(),INT_MAX);
    d[s] = 0;
    Q.push({0,s});
    while(!Q.empty()){
        int u = Q.top().second;
        int du = -Q.top().first;
        Q.pop();
        if (d[u] != du) continue;
        for(const auto &e : adj[u]) {
            int v = e.first;
            int w = e.second;
            if(d[v] > d[u] + w){
                d[v] = d[u] + w;
                Q.push({-d[v], v});
            }
        }
    }
    return d;
}

int main() {
    int n, m;
    cin >> n >> m;
    vector< vector< pair<int, int> > > adj(n+1);
    auto add_edge = [&adj] (int u, int v, int w) {
        adj[u].push_back({v, w});
    };

    for (int i = 1; i <= m; i++) {
        int x, y, z;
        cin >> x >> y >> z;
        add_edge(x, y, z);
    }

    int s, t;
    cin >> s >> t;
    /*
    9 12
    0 1 4
    0 7 8
    1 2 8
    2 3 7
    2 8 2
    3 4 9
    3 5 14
    4 5 10
    5 6 2
    6 7 1
    6 8 6
    7 8 7
    */

    /*
    vector<int> distance = dijkstra(adj);
    for (int i = 0; i < distance.size(); ++i) {
        cout << "distance " << 0 << "->" << i << " = " << distance[i] << endl;
    }
    */
    vector<int> distance = dijkstra(s, adj);
    if (distance[t] == INT_MAX) cout << -1;
    else cout << distance[t];
    return 0;
}
