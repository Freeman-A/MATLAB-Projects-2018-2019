function V1 = VolRezervor(h)
%Functia calculeaza volumul apei unui cilindru de raza 15 m.
%==========================================================================
 r=15;
 H=40;
 if(abs(h)<H && h>0)
     R=2*r;
     V=@(h) pi*r*(3*R-h)*(h^2)/3*R;
     V1=V(h);
     fplot(V,[0 70]);
     else
     disp('Inaltimea ta este mai mare decat 40');
 end
end 
