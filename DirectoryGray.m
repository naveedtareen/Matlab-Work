 inputDir = 'bakhtjpg/'; % this is the input directory
 outputDir = 'bakhtgray/';% after processing all the jpg images will be stored into png format in this directory
 %catsjpg/*.jpg
 loadJPG = dir([inputDir '*.jpg']); % it loads all the files into variable loadJPG
 
 for i=1: length(loadJPG)
    
    img = imread([inputDir loadJPG(i).name]); %image is loaded from the inputDir
    name = loadJPG(i).name; %copies the name of image into variable name
    fprintf('%d) loading %s \t', i, name);
    img = rgb2gray(img);
    imwrite(img, [outputDir name '.png']);
    fprintf('%d) writing %s .png \n', i, name);
    
 end