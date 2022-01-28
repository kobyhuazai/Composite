function y = ReducedStiffness(E1,E2,NU12,G12)
%ReducedStiffness This function returns the reduced stiffness
% matrix for fiber-reinforced materials.
% There are four arguments representing four
% material constants. The size of the reduced
% stiffness matrix is 3 x 3.
NU21 = NU12*E2/E1;
y = [E1/(1-NU12*NU21) NU12*E2/(1-NU12*NU21) 0 ;
    NU12*E2/(1-NU12*NU21) E2/(1-NU12*NU21) 0 ; 
    0 0 G12];
end