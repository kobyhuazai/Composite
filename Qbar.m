function y = Qbar(Q,theta)
%Qbar This function returns the transformed reduced
% stiffness matrix "Qbar" given the reduced
% stiffness matrix Q and the orientation
% angle "theta".
% There are two arguments representing Q and "theta"
% The size of the matrix is 3 x 3.
% The angle "theta" must be given in degrees.

  theta1  = theta * pi / 180; % ply i angle in radians, from bottom
  m = cos(theta1) ;
  n = sin(theta1) ;
  T = [ m^2 n^2 2*m*n; n^2 m^2 -2*m*n; -m*n m*n (m^2 - n^2)];
  y = inv(T) * Q * (inv(T))' ;

end