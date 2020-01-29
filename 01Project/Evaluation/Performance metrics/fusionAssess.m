function res=fusionAssess(im1,im2,fused)

% function res=fusionAssess(im1,im2,fused)
%
% This function is to assess the fused image with different fusion
% assessment metrics.
% 
% im1   ---- input image one;
% im2   ---- input image two;
% fused ---- the fused image(s)
% res   ==== the metric value
%
% Z. Liu @ NRCC [Aug 21, 2009]
%

im1=double(im1);
im2=double(im2);


% check the number of the fused images.
%num=prod(size(fused));

%if (num==1)
    %disp('Only one fused image is used.');
%end

% caculate the image fusion metrics:

%for i=1:num;
    % normalized mutual informtion $Q_{MI}$
%Q(1)=metricMI(im1,im2,fused,1);
    
    % Tsallis entropy $Q_{TE}$
%Q(2)=metricMI(im1,im2,fused,3);

    % Wang - NCIE $Q_{NCIE}$
%Q(3)=metricWang(im1,im2,fused);
    
    % Xydeas $Q_G$
%Q(4)=metricXydeas(im1,im2,fused);
    
    % PWW $Q_M$
%Q(5)=metricPWW(im1,im2,fused);
    
    %Yufeng Zheng (spatial frequency) $Q_{SF}$
%Q(6)=metricZheng(im1,im2,fused);
    
    % Zhao (phase congrency) $Q_P$
%Q(7)=metricZhao(im1,im2,fused);
    
    % Piella  (need to select only one) $Q_S$
    % Q(i,8)=index_fusion(im1,im2,fused{i});
Q(8)=SSIM(im1,im2,fused,1);
    
    % Cvejie $Q_C$
%Q(9)=metricCvejic(im1,im2,fused,2);
    
    % Yang $Q_Y$
%Q(10)=metricYang(im1,im2, fused);
    
    % Chen-Varshney $Q_{CV}$
%Q(11)=metricChen(im1,im2,fused);
      
    % Chen-Blum $Q_{CB}$
%Q(12)=metricChenBlum(im1,im2,fused);

    % fmi}$
Q(13)=fmi(im1,im2,fused);
       
   
res=Q;
