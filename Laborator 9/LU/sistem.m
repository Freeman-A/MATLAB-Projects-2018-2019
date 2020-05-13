function x1 = sistem(A,B)
%Metoda de rezolvare a sistemului prin LU fara pivotare (instabil)*
%=========================================================================
% Andreas Mihalea, Gr. 104
%========================================================================-
ex = ~isvector(A);
[ma,na]=size(A);
[mb,~]=size(B);
if(ex==1 && ma==mb)
    if(ma==na)
if(det(A) ~= 0)
    n=rank(A);
     [L,U]=lufp(A);
     
      if(det(L)==1)
      Y = MetSubsDesc(L,B);
      X = MetSubsAsc(U,Y);
      x1=X';
      [e,~]=size(X);
      if(n~=e)
          fprintf("Matricea A admite factorizarea LU, dar e instabila si are %i solutii \n",e);
      for i=1:e
          fprintf("x(%-i)=%f \n",i,x1(i));
      end
      else
          disp("Matricea A admite factorizarea LU si e si stabila");
          for i=1:n
          fprintf("x(%-i)=%f \n",i,x1(i));
          end
      end
     else
         disp("Matricea A nu admite factorizarea LU fara pivotare");
     end
else
    disp("Matricea A nu e inversabila");
end
    else
        disp("Matricea A nu e compatibila cu matricea B");
    end
else
    disp("Matricea A nu e patratica");
end
end
% *-Metoda nu functioneaza pentru toate cazurile, de aceea este instabil.
