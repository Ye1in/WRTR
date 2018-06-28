#include <opencv2/core/core.hpp>
#include "baseapi.h"
#include <leptonica/allheaders.h>
#include <iostream>
#include <string>
#include <regex>
#include <utility>
#include <fstream>

using namespace std;

void deleteAllMark(string &s, const string &mark) {
    size_t nSize = mark.size();
    while (1) {
        size_t pos = s.find(mark);
        if (pos == string::npos) {
            return;
        }
        s.erase(pos, nSize);
    }
}

string regex_matchEN(const string &str, const string &path) {
    smatch match;
    regex re("企业名称:.*");
    if (regex_search(str, match, re)) {
        return match[0].str().substr(13);
    }
    return "匹配企业名称错误 :" + path;
}

string regex_matchMN(const string &str, const string &path) {
    smatch match;
    regex re("法定代表人:.*");
    if (regex_search(str, match, re)) {
        return match[0].str().substr(16);
    }
    return "";
}

int getCh(string path) {

    tesseract::TessBaseAPI *api = new tesseract::TessBaseAPI();
    if (api->Init(NULL, "chi_sim")) {
        fprintf(stderr, "Could not initialize tesseract.\n");
        exit(1);
    }
//    cvtColor(resultColor,resultColor,CV_BGR2RGBA);

//    api->SetImage((uchar *) resultColor.data, resultColor.size().width, resultColor.size().height,
//                  resultColor.channels(), api->Recognize(0));
//    api->SetPageSegMode(static_cast<tesseract::PageSegMode >(7));
//    api->TesseractRect(resultColor.data, 1, resultColor.step1(), 0, 0, resultColor.cols, resultColor.rows);
//    char *out = api->GetUTF8Text();
//    printf("%s", out);
    string outText;
    extern ofstream ofile;
    const char *cpath = path.data();
    Pix *image = pixRead(cpath);
    if (!image) {
//        pixDestroy(&image);
        ofile << "非图片文件" << endl;
        return 0;
    }
    api->SetImage(image);
    outText = api->GetUTF8Text();
    deleteAllMark(outText, " ");
    deleteAllMark(outText, ";");
    api->End();
//    cout << outText;
//    delete outText;
//    pixDestroy(&image);
    ofile << regex_matchEN(outText,path) << "," << regex_matchMN(outText,path) << endl;
    return 1;
}

//int main() {
//    getCh(" ");
//}
