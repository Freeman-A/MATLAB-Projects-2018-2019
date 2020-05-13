classdef tema2  %Se apeleaza la command Window tema2.Stirling(numar) pentru stirling
    %Se apeleaza la command Windows tema2.cmmdc(doua numere);
    properties
      tema
   end
     methods (Static)
         function a = Stirling (n)
               nf = factorial(n);
               t1 = sqrt (2*pi*n);
               t3 = exp(1);
               t2 = (n / t3);
               t4 = t2 ^ n;
               format long
               nf1 = t1 * t4;
               err_abs = abs(nf1 - nf);
               err_rel = err_abs / abs(nf);
     disp ("Fsctorialul "); 
     disp (nf);
     disp ("Factorialul cu Stirling "); 
     disp(nf1);
     disp("Eroarea absoluta");
     disp(err_abs);
     disp("Eroarea relativa");
     disp(err_rel);
     loglog(err_abs);
         end
         function [b,c] = cmmdc (a,b)
           r=rem(a,b);
           while r~=0
               a=b;
               b=r;
               r=rem(a,b);
           end
           fprintf("CMMDC-ul este: %d \n", b);
         end
     end
end
     
%Tema realizata de Mihalea Andreas, grupa 104