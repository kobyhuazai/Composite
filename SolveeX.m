function y = SolveeX(E1,E2, po12,po21,G12,theta)

theta  = theta * pi / 180;
y = 1/( (cos(theta))^4/E1  +  (1/G12 - 2*po12/E1) *(sin(theta))^2 *(cos(theta))^2  +  (sin(theta))^4/E2  );


end

