% Read image
img = imread('images.jpeg');  

grayImg = rgb2gray(img);               % Grayscale 
edgesImg = edge(grayImg, 'Sobel');     % Sobel filter

% Current Directory
currentPath = pwd;

% 'data' folder
dataFolder = fullfile(currentPath, 'data');
if ~exist(dataFolder, 'dir')
    mkdir(dataFolder);
end

% save edges.mat
save(fullfile(dataFolder, 'edges.mat'), 'edgesImg');

% Plot
figure;
imshow(edgesImg);
