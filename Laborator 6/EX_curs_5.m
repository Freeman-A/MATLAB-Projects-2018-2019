%Copyright Andreas Mihalea Gr. 104 2019 Exemplu 5 din curs
clear
close all
m=input('Pozitia balizei:');
format long
hcil=19;
dco=25;
rco=dco/2;
Dco=46;
Rco=Dco/2;
hcon=14;
hmax=Dco+dco;
if(m<=hcil)
    Vtra=pi*(rco^2)*m;
    fprintf("Volumul apei este %d m3",Vtra);
end    
if (m>=hmax)
Vcon = pi*hcon*(1/3)*(rco^2+Rco^2+rco*Rco);
Vtra = pi*rco^2*hcil;
fprintf("Volumul apei este %d m3",Vtra+Vcon);
elseif (m>hcil)
     R=Rco-rco;
     m=m-hcil;
     x=rco+(m*R)/hcon;
     Vcon = pi*hcon*(1/3)*(rco^2+R^2+rco*R);
     Vtra = pi*rco^2*hcil;
     fprintf("Volumul apei este %d m3",Vtra+Vcon);
end