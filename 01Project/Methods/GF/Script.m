clc,clear
%%%% gray image fusion
I = load_images( './sourceimages/a',1); 
%I(:,:,1)=imread('010_MR-T2.tif');
%I(:,:,2)=imread('010_CT.tif');
F = GFF(I);
imshow(F);
imwrite(F,'/home/caibadal/Desktop/Thesis/GFfusion.png')
%%%% color image fusion
%I = load_images( '.\Sourceimages\colourset',1); 
%F = GFF(I);
%figure,imshow(F);