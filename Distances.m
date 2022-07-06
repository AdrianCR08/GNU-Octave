bw = zeros(200,200);
bw(50,50) = 1; bw(50,150) = 1; bw(150,100) = 1;
D1 = bwdist(bw,'euclidean');
D2 = bwdist(bw,'cityblock');
D3 = bwdist(bw,'chessboard');
D4 = bwdist(bw,'quasi-euclidean');
RGB1 = repmat(rescale(D1), [1 1 3]);
RGB2 = repmat(rescale(D2), [1 1 3]);
RGB3 = repmat(rescale(D3), [1 1 3]);
RGB4 = repmat(rescale(D4), [1 1 3]);

figure
subplot(2,2,1), imshow(RGB1), title('Euclidean')
hold on, contourf(D1)
subplot(2,2,2), imshow(RGB2), title('Cityblock')
hold on, contourf(D2)
subplot(2,2,3), imshow(RGB3), title('Chessboard')
hold on, contourf(D3)
subplot(2,2,4), imshow(RGB4), title('Quasi-Euclidean')
hold on, contourf(D4)

print Distances.pdf