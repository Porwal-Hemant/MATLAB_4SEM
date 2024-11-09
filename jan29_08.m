% Define the SOS matrix and corresponding gain vector
sosMatrix = [1, -1.3817, 0.5625, 1, -1.6308, 0.7351;
             1, -1.5683, 0.6443, 1, -1.8352, 0.8689];
g = [1.4822; 1.3792];

% Use the sos2tf() function to convert SOS to transfer function
[num, den] = sos2tf(sosMatrix, g);

% Display the resulting numerator and denominator coefficients
disp('Numerator coefficients:');
disp(num);
disp('Denominator coefficients:');
disp(den);

