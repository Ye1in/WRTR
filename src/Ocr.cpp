#include <iostream>
#include "asprise_ocr_api.h"

using namespace std;

void testOcr() {
    const char * libFolder = ".";   // 修改为dll所在目录，这里.表示是当前目录
    const char * fileImg = "test.png"; // 修改需要识别的图片目录，

    //加载dll
    LIBRARY_HANDLE libHandle = dynamic_load_aocr_library(libFolder);
    //输出当前OCR的版本信息
    cout << "Version: " << c_com_asprise_ocr_version() << endl;

    int setup = c_com_asprise_ocr_setup(false);
    if (setup != 1) {
        cerr << "Failed to setup. code: " << setup << endl;
        return;
    }

    // must be of long long type
    long long ptrToApi = c_com_asprise_ocr_start("eng", OCR_SPEED_FAST, NULL, NULL, NULL);
    //设置识别参数
    if (ptrToApi == 0) {
        cerr << "Failed to start." << endl;
        return;
    }

    cout << "OCR engine started. " << endl;
    //开始识别，OCR_OUTPUT_FORMAT_PDF表示输出为PDF文件，PROP_PDF_OUTPUT_FILE为文件名，
    //PROP_PDF_OUTPUT_TEXT_VISIBLE表示是否在原图片上面显示文字
    char * s = c_com_asprise_ocr_recognize(ptrToApi, fileImg, -1, -1, -1, -1, -1, OCR_RECOGNIZE_TYPE_ALL, OCR_OUTPUT_FORMAT_PDF,
                                           "PROP_PDF_OUTPUT_FILE=result.pdf,PROP_PDF_OUTPUT_TEXT_VISIBLE=true,PROP_PDF_OUTPUT_IMAGE_FORCE_BW=true,PROP_OUTPUT_SEPARATE_WORDS=false,PROP_PDF_OUTPUT_RETURN_TEXT=text", ",", "=");

    cout << "Returned: " << s << std::endl;

    //关闭
    c_com_asprise_ocr_stop(ptrToApi);
    //卸载dll
    cout << "Unload: " << (dynamic_unload_aocr_library(libHandle) ? "OK" : "Failed") << endl;
}

int main(int argc, int * argv[])
{
    testOcr();

    std::cout << "Press ENTER to exit: ";
    std::cin.ignore();
    return 0;
}