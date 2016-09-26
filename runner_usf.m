length = 300; %minutes
stepsize = 0.5; %minutes


a0 = 121.7;
g0 = 90; %mg/dL
k1 = 0.0453;
k2 = 0.0224;

Out = zeros(round(length / stepsize));

for t = 1 : (length / stepsize)

  Out(t) = general_glucose_from_usf(a0, g0, k1, k2, t * stepsize);

end

plot (1 : (length / stepsize), Out, 'r.');