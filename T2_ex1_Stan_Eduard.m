time = linspace(-50,50,100);   
fc = 0;                    
Perioada = 40;
N=50;
W0 = (2*pi)/Perioada; 
                        

for v=-N:1:N
 
    if(v==0)                
        continue;
    end;
 
    Cf = ((1)/(pi*1i*v))*(1-exp(-pi*1i*v));    
    fv = Cf*exp(W0*1i*v*time);                 
    fc = fc + fv;                               
 
end
 
plot(time, fc);
grid on;
xlabel('t');
ylabel('f(t)');
