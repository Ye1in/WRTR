#include <iostream>
//#include "getCh.cpp"
#include "getPic.cpp"
#include <string>
#include <vector>
#include <fstream>
#include <string.h>
#include <utility>
#include <string.h>
#include <dirent.h>
#include <future>
#include <chrono>

using namespace std;

void getFiles(string path, vector<string> &files) {
    DIR *dp;
    struct dirent *dirp;
    if ((dp = opendir(path.c_str())) == NULL)
        perror("open dir error");
    while ((dirp = readdir(dp)) != NULL)
        if (!strcmp(dirp->d_name, ".") || !strcmp(dirp->d_name, "..")) {
            continue;
        } else
            files.push_back(path + "/" + string(dirp->d_name));
    closedir(dp);
}

ofstream ofile;

int main() {
    chrono::system_clock::time_point start = chrono::system_clock::now();
    string directory = "../pic_src/天猫工商信息执照";
    vector<string> files{};
    getFiles(directory, files);
    ofile.open("../data/data.xls", ios::out | ios::trunc);
    for (int i = 0; i < files.size(); i++) {
//        pair<string, string> ss{getCh(getPic(files.at(i)))};
//        ofile << ss.first << "," << ss.second << endl;
        async(launch::async, getPic, files.at(i));
    }
    ofile.close();
//    string path = getPic(files[0]);
//    pair<string, string> ss(getCh(path));
    chrono::system_clock::time_point end = chrono::system_clock::now();
    auto duration = chrono::duration_cast<chrono::microseconds>(end - start);
    cout << "共花费"
         << double(duration.count()) * chrono::microseconds::period::num / chrono::microseconds::period::den <<"秒"<< endl;
    return 0;

}

