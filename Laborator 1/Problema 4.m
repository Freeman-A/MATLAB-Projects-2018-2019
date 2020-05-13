AB=8;
BC2 = 50; %BC la patrat
CD2 = 50; %CD la patrat
BC = 5*1.41; %BC
CD = 5*1.41; %CD
DA=6;       
BAD = 90; %unghiul BAD
BD = sqrt(AB^2+DA^2);  %BD
EC = sqrt (BC2-(BD/2)^2); %EC
sinABCu1 = DA/BD; %sinusul de ABC in triunghiul ABD
ABCu1=rad2deg(asin(sinABCu1));
ADBu1=190-BAD-ABCu1; %ADB in triunghiul ABD
cosBCD=-(BD^2-(BC2+CD2))/2*BC2;
BCD= rad2deg(acos(cosBCD));
BCE = BCD/2;
BD0 = BD/2;
cosBEC=-(BC2-(EC^2+BD0^2))/2*EC*BD0;
BEC = rad2deg(acos(cosBEC));
CBE = 180 - (BEC+BCE);
CBA = CBE+ ABCu1;
CDB = CBE;
CDA = CDB + ADBu1;
cosCBA=cos(CBA);
AB2=AB^2;
AC2 = DA^2+CD2-(2*cos(CDA)*DA*CD);
AC = sqrt(AC2);
fprintf("AC=%f, BD=%d a) \n ",AC,BD);
if(CBA+CDA+BAD+BCD == 360)
      fprintf("Convex b)\n");
else fprintf("Nu e convex b)\n");
Sup=CBA+CDA;
end
if (BAD+BCD == 180)
    if(round(Sup) == 180)
        fprintf("Patrulater inscriptibil c)\n");
        else fprintf("Nu e inscriptibil c)\n");
    end
    else fprintf("Nu e inscriptibil c)\n");

end;
if(DA + BC == AB + CD)
      fprintf("Are cerc inscris d)\n");
else fprintf("Nu are cerc inscris d)\n");
end;

P = DA+BC+AB+CD; %Perimetrul 
A = (AB*DA)*sin(BAD)/2 + (BC*CD)*sin(BCD)/2; %Aria
fprintf("Perimetru P=%f, Aria A=%f e)\n",P,A);

