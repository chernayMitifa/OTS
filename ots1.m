N=10; M=2; sps = 8; 
bits=randi([0,1],1,N);
%disp (bits)
%modSymbols = qammod(bits,M);
%disp (gammod)
for v=1:1:N
    bits (1,v)=bits (1,v)*2-1;
end
%disp (bits)

Forma = ones (1,sps);

%disp (Forma)
stairs(bits), axis equal

Delta = [bits sps*N];
disp(Delta)

% apskmod; pammod