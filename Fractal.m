%Fractal Geometry
clc,clearvars ,close all, format compact
%input Paramters
tri_b=10; %base of equilateral triangle
n=10; %numbers of iterations 
init_pos=[5,3]; %x,y [initial position]

%string Calcs
pt1=[0,0];%bottom left vertex
pt2=[1/2*tri_b ,tri_b*cos(30*pi/180)]; %top vertex
pt3=[tri_b,0]; %bottom right vertex


current_pos=init_pos;


%for loop
for i=1:n
    %pick random vertex
    event=randi(3);


    %calc midpoints based on vertex , switch statemnt
    switch event 
        case 1
            current_pos = calc_midpt(current_pos,pt1)
        case 2
           current_pos = calc_midpt(current_pos,pt2)
        case 3
           current_pos = calc_midpt(current_pos,pt3)
    end
        %save the values
        all_pos(i,1)=current_pos(1);
        all_pos(i,2)=current_pos(2);
        
end    

plot(all_pos(:,1),all_pos(:,2),'.k')
hold on
plot([pt1(1),pt2(1),pt3(1)],[pt1(2),pt2(2),pt3(2)],'mv',...
    'MarkerFaceColor','m','MarkerSize',14)
    %midpoint function 
function [midpt] =calc_midpt(current_pos, target_pos)
midpt(1)=(current_pos(1)+target_pos(1))/2
midpt(2)=(current_pos(2)+target_pos(2))/2

end

