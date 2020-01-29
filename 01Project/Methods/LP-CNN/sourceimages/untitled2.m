mri_test=imread('CT.png');
CT_test=imread('T1.png');
mri_testnorm = double(mri_test) /255;
CT_testnorm = double(CT_test) /255;

%Load fused images
F=uint8((0.5*mri_testnorm+0.5*CT_testnorm)*255);
imwrite(F,'/home/caibadal/Desktop/Thesis/WAfusion2.png')