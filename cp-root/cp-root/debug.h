#ifndef __CPPRINT__
#define __CPPRINT__

#include<bits/stdc++.h>
using namespace std;

// create precompile-header
// clang++ -std=c++20 -I"./" -DDEBUG -O3 debug.h

class cpprint {
public:
    template<class T>
    static void print(T x) { _print(x); cerr << endl; }
    static void _print(char x) { cerr << "'" << x << "'"; }
    static void _print(string x) { cerr << "\"" << x << "\""; }
    template<class T>
    static void _print(T x) { cerr << x; }
    template<class T, class Alloc = allocator<T>>
    static void _print(vector<T, Alloc> x) {
        cerr << "[";
        for(unsigned int i = 0; i < x.size(); ++i) {
            if(i != 0) cerr << ", ";
            _print(x[i]);
        }
        cerr << "]";
    }
    template<class T, class Y>
    static void _print(pair<T, Y> x) {
        cerr << "{";
        _print(x.ff); cerr << ", "; _print(x.ss);
        cerr << "}";
    }
    template<class T, class Alloc = allocator<T>>
    static void _print(deque<T, Alloc> x) {
        cerr << "[";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            _print(*it);
        }
        cerr << "]";
    }
    template<class T, class Alloc = allocator<T>>
    static void _print(forward_list<T, Alloc> x) {
        cerr << "[";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            _print(*it);
        }
        cerr << "]";
    }
    template<class T, class Alloc = allocator<T>>
    static void _print(list<T, Alloc> x) {
        cerr << "[";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            _print(*it);
        }
        cerr << "]";
    }
    template<class T, size_t N> 
    static void _print(array<T, N> x) {
        cerr << "[";
        for(unsigned int i = 0; i < x.size(); ++i) {
            if(i != 0) cerr << ", ";
            _print(x[i]);
        }
        cerr << "]";
    }
    template<class T, class Compare = less<T>, class Alloc = allocator<T>>
    static void _print(set<T, Compare, Alloc> x) {
        cerr << "{";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            _print(*it);
        }
        cerr << "}";
    }
    template<class T, class Compare = less<T>, class Alloc = allocator<T>>
    static void _print(multiset<T, Compare, Alloc> x) {
        cerr << "{";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            _print(*it);
        }
        cerr << "}";
    }
    template<class Key, class T, class Compare = less<T>, class Alloc = allocator<pair<const Key, T>>>
    static void _print(map<Key, T, Compare, Alloc> x) {
        cerr << "[";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            cerr << "{"; _print(it->ff); cerr << ": "; _print(it->ss); cerr << "}";
        }
        cerr << "]";
    }
    template<class Key, class T, class Compare = less<T>, class Alloc = allocator<pair<const Key, T>>>
    static void _print(multimap<Key, T, Compare, Alloc> x) {
        cerr << "[";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            cerr << "{"; _print(it->ff); cerr << ": "; _print(it->ss); cerr << "}";
        }
        cerr << "]";
    }
    template<class Key, class Hash = hash<Key>, class Pred = equal_to<Key>, class Alloc = allocator<Key>> 
    static void _print(unordered_set<Key, Hash, Pred, Alloc> x) {
        cerr << "{";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            _print(*it);
        }
        cerr << "}";
    }
    template<class Key, class Hash = hash<Key>, class Pred = equal_to<Key>, class Alloc = allocator<Key>> 
    static void _print(unordered_multiset<Key, Hash, Pred, Alloc> x) {
        cerr << "{";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            _print(*it);
        }
        cerr << "}";
    }
    template<class Key, class T, class Hash = hash<Key>, class Pred = equal_to<Key>, class Alloc = allocator<pair<const Key,T>>> 
    static void _print(unordered_map<Key, T, Hash, Pred, Alloc> x) {
        cerr << "[";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            cerr << "{"; _print(it->ff); cerr << ": "; _print(it->ss); cerr << "}";
        }
        cerr << "]";
    }
    template<class Key, class T, class Hash = hash<Key>, class Pred = equal_to<Key>, class Alloc = allocator<pair<const Key,T>>> 
    static void _print(unordered_multimap<Key, T, Hash, Pred, Alloc> x) {
        cerr << "[";
        for(auto it = x.begin(); it != x.end(); ++it) {
            if(it != x.begin()) cerr << ", ";
            cerr << "{"; _print(it->ff); cerr << ": "; _print(it->ss); cerr << "}";
        }
        cerr << "]";
    }
    template <class T, class Container = deque<T>>
    static void _print(queue<T, Container> x) {
        queue<T, Container> e;
        bool fst = true;
        cerr << "[";
        while(!x.empty()) {
            if(!fst) cerr << ", ";
            cerr << x.front();
            e.push(x.front());
            x.pop();
            fst = false;
        }
        while(!e.empty()) {
            x.push(e.front());
            e.pop();
        }
        cerr << "]";
    }
    template <class T, class Container = deque<T>>
    static void _print(stack<T, Container> x) {
        stack<T, Container> e;
        bool fst = true;
        cerr << "[";
        while(!x.empty()) {
            if(!fst) cerr << ", ";
            cerr << x.top();
            e.push(x.top());
            x.pop();
            fst = false;
        }
        while(!e.empty()) {
            x.push(e.top());
            e.pop();
        }
        cerr << "]";
    }
    template <class T, class Container = vector<T>, class Compare = less<typename Container::value_type>>
    static void _print(priority_queue<T, Container, Compare> x) {
        priority_queue<T, Container, Compare> e;
        bool fst = true;
        cerr << "[";
        while(!x.empty()) {
            if(!fst) cerr << ", ";
            cerr << x.top();
            e.push(x.top());
            x.pop();
            fst = false;
        }
        while(!e.empty()) {
            x.push(e.top());
            e.pop();
        }
        cerr << "]";
    }
};

#define deb(args...) { \
  string _s = #args; \
  replace(_s.begin(), _s.end(), ',', ' '); \
  stringstream _ss(_s); \
  istream_iterator<string> _it(_ss); \
  __print(_it, args); \
}

void __print(istream_iterator<string> it) {}

template<typename T, typename... Args>
void __print(istream_iterator<string> it, T a, Args... args) {
	cerr << *it << " = ";
  cpprint::print(a);
	__print(++it, args...);
}

#define debr(arr, s, e) \
  for(int i = s; i <= e; ++i) \
    cerr << #arr << "[" << i << "] = ", \
    cpprint::print(arr[i]); 
#endif 
