#include<bits/stdc++.h>
#include<ext/pb_ds/assoc_container.hpp>
#include<ext/pb_ds/tree_policy.hpp>
#ifdef DEBUG
#include <debug.h>
#else
#define deb(args...)
#define debr(arr, s, e)
#endif
using namespace std;
using namespace __gnu_pbds;

#define ff first
#define ss second
#define endl "\n"
#define pb push_back
#define pf push_front
#define ppb pop_back
#define ppf pop_front
#define ll long long
#define i128 __int128
#define all(x) x.begin(), x.end()
#define rall(x) x.rbegin(), x.rend()
#define sz(x) (int)x.size()
#define sp(x) fixed<<setprecision(x)
#define zerobits(x) __builtin_ctzll(x)
#define onebits(x) __builtin_popcountll(x)
#define Test cout << "Case " << tc << ": "
#define Fori(v, s, e) for(int v = s; v <= e; ++v)
#define Forr(v, s, e) for(int v = s; v >= e; --v)
#define vinp(a) for(auto &x: a) cin >> x;
#define vmin(a) *min_element(all(a))
#define vmax(a) *max_element(all(a))
template <typename T> using pqb = priority_queue<T>; 
template <typename T> using pqs = priority_queue<T, vector<T>, greater<T>>; 
template <typename T> using pbds = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

void solve(int tc) {
  $0
}

int main() {
  deb("Author Shanto!...")
  ios_base::sync_with_stdio(false); cin.tie(nullptr);
  int tn = 1; 

  ${1:cin >> tn;}

  for(int tc = 1; tc <= tn; ++tc) solve(tc); 
  return 0;
}

