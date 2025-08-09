template <typename T>
class SegmentTree {
  int size;
  vector<T> tree;
 
  T default_element = ${1:LLONG_MAX};
  T merge(T l, T r) {
    return ${2:min(l, r)};
  }
 
  void build(vector<T>& a, int x, int lx, int rx) {
    if(lx == rx) {
      tree[x] = a[lx];
      return;
    }
    int mx = (lx+rx)/2;
    build(a, 2*x+1, lx, mx);
    build(a, 2*x+2, mx+1, rx);
    tree[x] = merge(tree[2*x+1], tree[2*x+2]);
  }
 
  void set(int i, int v, int x, int lx, int rx) {
    if(lx == rx) {
      tree[x] = v;
      return;
    }
    int mx = (lx+rx)/2;
    if(i <= mx) set(i, v, 2*x+1, lx, mx);
    else set(i, v, 2*x+2, mx+1, rx);
    tree[x] = merge(tree[2*x+1], tree[2*x+2]);
  }
 
  T query(int l, int r, int x, int lx, int rx) {
    if(l > rx || lx > r) return default_element;
    if(l <= lx && rx <= r) return tree[x];
    int mx = (lx+rx)/2;
    return merge(query(l, r, 2*x+1, lx, mx), query(l, r, 2*x+2, mx+1, rx));
  }
 
public:
  void build(vector<T>& a) {
    size = sz(a);
    tree.assign(4*size, default_element);
    build(a, 0, 0, size-1);
  }
 
  void set(int i, int v) {
    set(i, v, 0, 0, size-1);
  }
 
  T query(int l, int r) {
    return query(l, r, 0, 0, size-1);
  }
};
