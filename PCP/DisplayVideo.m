function DisplayVideo(Data1,Data2,Data3,imSize,VideoName)
writerObj = VideoWriter(VideoName);
writerObj.FrameRate = 20;
open(writerObj);
figure;
for i=1:size(Data1,2)
    img1 = Data1(:,i);
    img1 = reshape(img1,imSize);
    img2 = Data2(:,i);
    img2 = reshape(img2,imSize);
    img3 = Data3(:,i);
    img3 = reshape(img3,imSize);
    
    h = subplot('position',[0.01,0.50,0.47, 0.42]);
    imshow(img1/255);
    title(['time = ', num2str(i)]);
    
    h = subplot('position',[0.49,0.50,0.47, 0.42]);
    imshow(img2,[]);
    title('sparse signal');
    
    h = subplot('position',[0.01,0.001,0.47, 0.42]);
    imshow(img3/255);
    title('bg');
    
    frame = getframe(gcf); % 'gcf' can handle if you zoom in to take a movie.
    writeVideo(writerObj, frame);
end
hold off
close(writerObj);
close all;