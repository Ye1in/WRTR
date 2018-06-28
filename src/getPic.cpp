#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/photo/photo.hpp>
#include "getCh.cpp"
using namespace std;
using namespace cv;

int getPic(string path) {
    Mat inputImage = imread(path);
    if (!inputImage.data) {
        printf("No data!--Exiting the program \n");
        return 0;
    }
    path.replace(path.find("pic_src"), 7, "pic_dst");
    Mat hsvImage;
    if (inputImage.rows > 2000) {
        Size dsize = Size(inputImage.cols * 0.3, inputImage.rows * 0.3);
        Mat outputImage = Mat(dsize, CV_32S);
        resize(inputImage, outputImage, dsize);
        cvtColor(outputImage, hsvImage, CV_BGR2HSV);
        Mat resultColor = Mat(hsvImage.rows, hsvImage.cols, CV_8UC3, cv::Scalar(255, 255, 255));
        double H = 0.0, S = 0.0, V = 0.0;
        for (int i = 0; i < hsvImage.rows; i++) {
            for (int j = 0; j < hsvImage.cols; j++) {
                H = hsvImage.at<Vec3b>(i, j)[0];
                S = hsvImage.at<Vec3b>(i, j)[1];
                V = hsvImage.at<Vec3b>(i, j)[2];
                if (V > 30 && V < 149) {
                    resultColor.at<Vec3b>(i, j)[0] = outputImage.at<Vec3b>(i, j)[0];
                    resultColor.at<Vec3b>(i, j)[1] = outputImage.at<Vec3b>(i, j)[1];
                    resultColor.at<Vec3b>(i, j)[2] = outputImage.at<Vec3b>(i, j)[2];
                }
            }
        }
        imwrite(path, resultColor);
        return getCh(path);
    }


    cvtColor(inputImage, hsvImage, CV_BGR2HSV);
    Mat resultColor = Mat(hsvImage.rows, hsvImage.cols, CV_8UC3, cv::Scalar(255, 255, 255));
    double H = 0.0, S = 0.0, V = 0.0;
    for (int i = 0; i < hsvImage.rows; i++) {
        for (int j = 0; j < hsvImage.cols; j++) {
            H = hsvImage.at<Vec3b>(i, j)[0];
            S = hsvImage.at<Vec3b>(i, j)[1];
            V = hsvImage.at<Vec3b>(i, j)[2];
            if ((V >= 10 && V < 14) || (V >= 175 && V < 179)) {
                resultColor.at<Vec3b>(i, j)[0] = inputImage.at<Vec3b>(i, j)[0];
                resultColor.at<Vec3b>(i, j)[1] = inputImage.at<Vec3b>(i, j)[1];
                resultColor.at<Vec3b>(i, j)[2] = inputImage.at<Vec3b>(i, j)[2];
            }
        }
    }
    imwrite(path, resultColor);
    return getCh(path);
}
//int main(){
//    getPic("/home/yl/CLionProjects/WPTR/pic_src/天猫工商信息执照/3.png");
//}