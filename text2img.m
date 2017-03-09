%Convert any text file into an image (grayscale)

filemk = fopen('textfile.txt'); %open text file
fbts = fread(filemk); %read text file into a variable
fclose(filemk); %close text file
fbts = uint8(fbts); %convert read data from double to unsigned int 8 bits
[z,tmp] = size(fbts); %etrieve no of bytes in file into variable z
sz = sqrt(z); %determine size of image file - squre root of no. of bytes
d = uint32(sz);

im = zeros(d,d,'uint8');
k = 1;
for m=1:d
    for n=1:d
        im(m,n) = fbts(k,1); %Assign each pixel value based on the ascii code
        k = k+1;
    end
end

imshow(im, []) %normalize the values and display the image
