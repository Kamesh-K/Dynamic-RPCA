clear;
clc;
close all
load('Curtain.mat')
%imSize =[m n];
%M = double(X);
lambda = 1/sqrt(max(size(I))); % default lambda
tol = 1e-5;

[L,S] = PCP(I,lambda,tol);
VidName = 'CurtainOutput';
DisplayVideo(I, S, L, imSize, VidName);
