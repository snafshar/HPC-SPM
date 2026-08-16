#include <vector>
#include <algorithm>
#include <iostream>
int main(){int n=32;std::vector<double>a(n*n,0),b=a;for(int i=0;i<n;i++)a[i*n]=100;for(int step=0;step<20;step++){for(int r=1;r<n-1;r++)for(int c=1;c<n-1;c++)b[r*n+c]=.25*(a[r*n+c-1]+a[r*n+c+1]+a[(r-1)*n+c]+a[(r+1)*n+c]);std::swap(a,b);}std::cout<<a[n*n/2]<<'\n';}