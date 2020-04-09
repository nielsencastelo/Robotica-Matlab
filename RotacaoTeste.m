for i=0:360
   Pa=RotZ(i)*[3 7 0]'+[10 5 0]';
   plot3([0 Pa(1,:)],[0 Pa(2,:)],[0 Pa(3,:)])
   axis([0 30 0 30 0 30])
   pause(0.001)
end