

%Load test images
mri_test=imread('010_MR-T2.tif');
CT_test=imread('010_CT.tif');
mri_testnorm = double(mri_test) /255;
CT_testnorm = double(CT_test) /255;

%Load fused images
WAfusion=uint8((0.5*mri_testnorm+0.5*CT_testnorm)*255);
LP_CNNfusion=imread('LP_CNNfusion.tif');
GFfusion=imread('fuse_GF_T2-CT.tif');
CNNfusion=imread('fuse_T2-CT.tif');

%Show test images
subplot(2,4,1);
imshow(mri_test);
subplot(2,4,2);
imshow(CT_test);

%Show fused images
subplot(2,4,5);
imshow(WAfusion);
subplot(2,4,6);
imshow(LP_CNNfusion);
subplot(2,4,7);
imshow(GFfusion);
subplot(2,4,8);
imshow(CNNfusion);

%SSIM
peilla(1)=metricPeilla(mri_test,CT_test,WAfusion,1);
peilla(2)=metricPeilla(mri_test,CT_test,LP_CNNfusion,1);
peilla(3)=metricPeilla(mri_test,CT_test,GFfusion,1);
peilla(4)=metricPeilla(mri_test,CT_test,CNNfusion,1);

%FMI
fmi(1)=metricFMI(mri_test,CT_test,WAfusion);
fmi(2)=metricFMI(mri_test,CT_test,LP_CNNfusion);
fmi(3)=metricFMI(mri_test,CT_test,GFfusion);
fmi(4)=metricFMI(mri_test,CT_test,CNNfusion);
