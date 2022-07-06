I=imread('C:\Users\Lizet\Downloads\Dog.jpg') 
imshow(I) 
title('Input Image')
I1=rgb2gray(I);
figure,imshow(I1) 
title('gray converted Image')