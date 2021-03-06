function sys_ss = StateSpace()

A = [[0, -4.0456, 0, 0,       0, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       0, -5.7107, 0, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       0, 0,       0, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       0, 0,       0, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       0, 0,       0, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       0, 0,       0, 0, 0, 0, 0, 0, 0, 11.5254];
     [1, 0,       0, 0,       0, 0, 0, 0, 0, 0, 0, 0];
     [0, 1,       0, 0,       0, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       1, 0,       0, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       0, 1,       0, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       0, 0,       1, 0, 0, 0, 0, 0, 0, 0];
     [0, 0,       0, 0,       0, 1, 0, 0, 0, 0, 0, 0]];

 

B = [[0.0202, 0,      0,      0,      0,      0];
     [0,      0.2120, 0,      0,      0,      0];
     [0,      0,      0.0202, 0,      0,      0];
     [0,      0,      0,      0.4673, 0,      0];
     [0,      0,      0,      0,      0.4673, 0];
     [0,      0,      0,      0,      0,      0.2336];
     [0,      0,      0,      0,      0,      0];
     [0,      0,      0,      0,      0,      0];
     [0,      0,      0,      0,      0,      0];
     [0,      0,      0,      0,      0,      0];
     [0,      0,      0,      0,      0,      0];
     [0,      0,      0,      0,      0,      0]];
 
 
 C = [[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
      [0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0];
      [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0];
      [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0];
      [0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0];
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0];];
  
  D = [[0, 0, 0, 0, 0, 0];
       [0, 0, 0, 0, 0, 0];
       [0, 0, 0, 0, 0, 0];
       [0, 0, 0, 0, 0, 0];
       [0, 0, 0, 0, 0, 0];
       [0, 0, 0, 0, 0, 0];]; 
   
sys = ss(A, B, C, D);
[sys_ss, U] = minreal(sys);

Abar = U * A * U;
Bbar = U * B;
Cbar = C * U;

 