function R = make_half_R(Rin,T)

%%% Copy the output from the registration window

% Result after fitting of masscenter and MoI:
% Rotation x:    -4.9356E-03
% Rotation y:    -2.4242E-02
% Rotation z:    -2.3159E-02
% Translation x: -7.6873E-01
% Translation y: -5.2606E-01
% Translation z: -2.1491E-01

% Input R =  make_half_R([Rotation x, Rotation y, Rotation z],[Translation x Translation y Translation
% Then it will ask you for the dimensions and positions of the images,
% everything is in a reasonable order.


a = Rin(1);
b = Rin(2);
c = Rin(3);

dim1x = input('\n\ndim1x?\n\n');
dim1y = input('\n\ndim1y?\n\n');
dim1z = input('\n\ndim1z?\n\n');

pos1x = input('\n\npos1x?\n\n'); 
pos1y = input('\n\npos1y?\n\n');
pos1z = input('\n\npos1z?\n\n');

dim2x = input('\n\ndim2x?\n\n');
dim2y = input('\n\ndim2y?\n\n');
dim2z = input('\n\ndim2z?\n\n');

pos2x = input('\n\npos2x?\n\n'); 
pos2y = input('\n\npos2y?\n\n');
pos2z = input('\n\npos2z?\n\n');

vox_size = input('\n\nvox size (mm)?\n\n');

a = a./2;
b = b./2;
c = c./2;
T=T./2;

Rx = [1 0 0 0; 0 cos(a) -sin(a) 0;0 sin(a) cos(a) 0; 0 0 0 1];

Ry = [cos(b) 0 sin(b) 0;0 1 0 0; -sin(b) 0 cos(b) 0;0 0 0 1];

Rz = [cos(c) -sin(c) 0 0;sin(c) cos(c) 0 0; 0 0 1 0; 0 0 0 1];

R_comb = Rz*Ry*Rx;

Tx = T(1);
Ty = T(2);
Tz = T(3);

Cx = pos2x*vox_size + ((dim1x+1)*0.5)*vox_size;
Cy = pos2y*vox_size + ((dim1y+1)*0.5)*vox_size;
Cz = pos2z*vox_size + ((dim1z+1)*0.5)*vox_size;

Tx = Tx + (pos1x*vox_size - pos2x*vox_size);
Ty = Ty + (pos1y*vox_size - pos2y*vox_size);
Tz = Tz + (pos1z*vox_size - pos2z*vox_size);



Tc= [ 1 0 0 Cx
      0 1 0 Cy
      0 0 1 Cz
      0 0 0 1 ];
  
Tt= [ 1 0 0 Tx
      0 1 0 Ty
      0 0 1 Tz
      0 0 0 1 ];
  
  
R=Tt*Tc*Rz*Ry*Rx*inv(Tc);

return