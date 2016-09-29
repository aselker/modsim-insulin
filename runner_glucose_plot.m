[T, insulin, glucose] = sim_glucose(5*10^-5, 7.2e-6, 0.067, 0.008, 2500, 4000, 500000, 0.1, 130);

%plot(T, insulin, 'r.');
%or
plot(T, glucose, 'g.');