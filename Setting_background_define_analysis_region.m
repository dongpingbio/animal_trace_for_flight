% This program is used to analysis the animal trajectory based on the video
% taken previewously
clc;
clear;
close;

% load the background movie
filename_background='Background.mp4';

% Load movie_raw_data
E_M_movie = VideoReader(filename_background,'Tag','My reader object');
nFrames = E_M_movie.NumberOfFrames;
vidHeight = E_M_movie.Height;
vidWidth = E_M_movie.Width;
mov(1:nFrames) = ...
    struct('cdata',zeros(vidHeight,vidWidth, 3,'uint8'),...
    'colormap',[]);

% Select analysis area, draw rectangle
I_background=read(E_M_movie,1);
background_frame=I_background;
hf = figure(1);
set(hf, 'position', [150 150 vidWidth vidHeight])
imshow(I_background);

% [a_xLeft, a_xRight, a_yUp, a_yDown,a_x,a_y,a_w,a_h]=ManualDraw_analysisArea;

a_xLeft=110;
a_xRight=234;
a_yUp=56;
a_yDown=186;
a_x=110;
a_y=56;
a_w=124;
a_h=130;

% Manual input the length of drawed line
% Ruler_p=ManualDraw_Ruler();
Ruler_p=120;
% draw_length=input('Please enter the length of the Line (cm)');
draw_length=25;
% Calculate the length per pixels
len_per_pixels=draw_length/Ruler_p;

Movie_analyze




