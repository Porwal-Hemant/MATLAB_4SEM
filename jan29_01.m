
% Analog Signal
Dt = 0.00005; t = -0.005:Dt:0.005; xa = exp(-1000*abs(t));
% dt is the sampling interval 
% Continuous-time Fourier Transform
Wmax = 2*pi*2000; K = 500; k = 0:1:K; W = k*Wmax/K;
Xa = xa * exp(-j*t'*W) * Dt; Xa = real(Xa);
W = [-fliplr(W), W(2:501)]; % Omega from -Wmax to Wmax
% flipping is for the interval between between -2 to -501 
Xa = [fliplr(Xa), Xa(2:501)]; % Xa over -Wmax to Wmax interval
subplot(2,1,1);plot(t*1000,xa);
xlabel('t in msec.'); ylabel('xa(t)')
title('Analog Signal')
subplot(2,1,2);plot(W/(2*pi*1000),Xa*1000);
xlabel('Frequency in KHz'); ylabel('Xa(jW)*1000')
title('Continuous-time Fourier Transform')

