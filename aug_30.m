p = rand( 1 ) ; 
r = binornd( 1 , p ,[1,16] ) ; 

fc = 2 ; 

A = 1  ; 

t=0:0.01:1;

% BASK ( binary amplitude shift keying ) 

s_bask = A * cos( 2*pi*fc*t) ; 
s_zero = zeros(1 , length(s_bask)) ; 

BASK = [] ; 


for i =  1 : 1 : 16 

      if r(i) == 1 
           
         BASK = [BASK s_bask] 

      else 
         
         BASK = [BASK s_zero] 



      end

end
 
figure(1) ;
plot(BASK) ; 


figure(2) ;
hold on  ; 

i = 1 ; 
while ( i <= 16) 

    x = r(i) ; 
    scatter( x , 0 ) ;
        

    i = i + 1 ;

end

% add N( 0,1 ) to 16 bit sequence 

w = rand( 1 , 16) ; 

r_noisy = r + w ; 


figure(3) ; 
hold on ; 

i = 1 ; 
while ( i <= 16) 

    x = r_noisy(i) ; 
    scatter( x , 0 ) ;
        

    i = i + 1 ;

end

% plotting BFSK signal 

f1 = 3 ;    % calculating f1-f2 = m / 2Tb     ( here taking m is equal to 1 ) 
f2 = 1 ; 

% BFSK ( binary freq shift keying ) 


Tb = 2  ; 


bfsk_f1 = 2 * cos( 2 * pi * f1 * t ) ; 

bfsk_f2 = 2 * cos( 2 * pi * f2 * t ) ; 


bfsk_last = [] ; 

for i =  1 : 1 : 16 

      if r(i) == 1 
           
         bfsk_last = [bfsk_last bfsk_f1] 

      else 
         
         bfsk_last = [bfsk_last bfsk_f2] 



      end

end

figure(4) ; 
hold on ; 
plot(bfsk_last) 



figure(5) ;
hold on  ; 


i = 1 ; 
while ( i <= 16) 

    x = r(i) ; 
  %  y = r_noisy(i) ; 
    
    if x == 0 

        scatter( 0 , 1)

    else 

        scatter( 1 ,0)


    end
        

    i = i + 1 ;

end








 


   