#include <iostream>
#include <thread>
#include <vector>
long long reduce(const std::vector<int>& values,unsigned workers){std::vector<long long> local(workers);std::vector<std::thread> pool;for(unsigned id=0;id<workers;id++)pool.emplace_back([&,id]{for(size_t i=id;i<values.size();i+=workers)local[id]+=values[i];});for(auto&t:pool)t.join();long long total=0;for(auto x:local)total+=x;return total;}
int main(){std::vector<int>v(1000,1);std::cout<<reduce(v,4)<<'\n';}