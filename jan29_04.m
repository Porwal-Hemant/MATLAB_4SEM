b = [1, 0]; a = [1, -0.9]; 
subplot(3,1,1);
zplane(b,a)
title('zero-pole');
[H,w] = freqz(b,a,100); magH = abs(H); phaH = angle(H);
subplot(3,1,2);plot(w/pi,magH);grid
xlabel('frequency in pi units'); ylabel('Magnitude');
title('Magnitude Response')
subplot(3,1,3);plot(w/pi,phaH/pi);grid
xlabel('frequency in pi units'); ylabel('Phase in pi units');
title('Phase Response')

