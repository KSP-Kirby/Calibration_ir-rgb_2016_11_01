for i = 1:23
    filename = strcat('i',num2str(i),'.tif');
    im = imread(filename);
    filename = strcat('i',num2str(i),'.bmp');
    imwrite(im, filename);
end