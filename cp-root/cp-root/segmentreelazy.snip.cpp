template <typename T>
class SegmentTree {
  int size;
  vector<T> tree, lazy;
  $0
  T default_element = INT_MAX;
  T default_lazy = 0;
  T merge(T l, T r) {
    return (l & r);
  }
  T apply_lazy(T nv, T lv) {
    return (nv | lv);
  }
  void propagate(int x, int lx, int rx) {
    tree[x] = apply_lazy(tree[x], lazy[x]);
    if(lx != rx) {
      lazy[2*x+1] = apply_lazy(lazy[2*x+1], lazy[x]); 
      lazy[2*x+2] = apply_lazy(lazy[2*x+2], lazy[x]); 
    }
    lazy[x] = default_lazy;
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
 
 
  void set(int l, int r, T v, int x, int lx, int rx) {
    propagate(x, lx, rx);
 
    if(l > rx || lx > r) return;
    if(l <= lx && rx <= r) {
      lazy[x] = v;
      propagate(x, lx, rx);
      return;
    }
 
    int mx = (lx+rx)/2;
    set(l, r, v, 2*x+1, lx, mx);
    set(l, r, v, 2*x+2, mx+1, rx);
    
    tree[x] = merge(tree[2*x+1], tree[2*x+2]);
  }
 
  T query(int l, int r, int x, int lx, int rx) {
    propagate(x, lx, rx);
 
    if(l > rx || lx > r) return default_element;
    if(l <= lx && rx <= r) return tree[x];
 
    int mx = (lx+rx)/2;
    return merge(query(l, r, 2*x+1, lx, mx), query(l, r, 2*x+2, mx+1, rx));
  }
 
public:
  void build(vector<T>& a) {
    size = sz(a);
    tree.assign(4*size, default_element);
    lazy.assign(4*size, default_lazy);
    build(a, 0, 0, size-1);
  }
 
  void set(int l, int r, T v) {
    set(l, r, v, 0, 0, size-1);
  }
 
  T query(int l, int r) {
    return query(l, r, 0, 0, size-1);
  }
};
