#include <bits/stdc++.h>

using namespace std;

template <class Fun> class y_combinator_result {
    Fun fun_;

  public:
    template <class T>
    explicit y_combinator_result(T &&fun) : fun_(std::forward<T>(fun)) {
    }
    template <class... Args> decltype(auto) operator()(Args &&...args) {
        return fun_(std::ref(*this), std::forward<Args>(args)...);
    }
};
template <class Fun> decltype(auto) y_combinator(Fun &&fun) {
    return y_combinator_result<std::decay_t<Fun>>(std::forward<Fun>(fun));
}
#define yc y_combinator

mt19937_64 rng(chrono::steady_clock::now().time_since_epoch().count());

int n, m, k, q;
const int N = 500005;
long long a[N];
vector<int> adj[N];
string s;

void solve() {
}

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    int T;
    cin >> T;
    while (T--)
        solve();
}
