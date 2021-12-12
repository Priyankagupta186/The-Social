#include <bits/stdc++.h>
using namespace std;

int main() {

    int t;
    cin >> t;
    while(t--) {
        string s;
        cin >> s;

        char k = *min_element(s.begin(), s.end());
        string front = "";
        string back = "";
        bool l = true;
        for (int i = 0; i < s.size(); i++) {
            if (s[i] == k && l) {
                front += s[i];
                k = *min_element(s.begin() + i+1, s.end());

                if(back.size() && k > back[0]) {
                    l = false;
                }
                else if(back.size() > l && k == back[0]) {
                    string t = back + k;
                    string y = k + back;

                    if(t < y) {
                        l = false;
                    }
                }
            }

            else {
                back += s[i];
            }
        }
        cout << front + back << endl;
    }

    return 0;
}