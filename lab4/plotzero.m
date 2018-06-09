%f r = 0.3, 0.6, 0.9 and ? = ?, ?/2, ?/4
R=[0.3 0.6 0.9];
W=[pi pi/2 pi/4];
for i = 1:3
    for j = 1:3
   
        figure;
        [z,p,y] = my_notch(R(i),W(j),whistle);    
        zplane(z,p)       
        title('notch filter')   
        
        figure;
        b = my_notch(R(i),W(j),whistle);
        freqz(b)       
    end    
end



% [z,p,y] = my_notch(0.9,pi/4,6);
% zplane(z,p);



