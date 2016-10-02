%S0, B0, ka, ke, food_glucose, blood_glucose, glucose_consumption_rate_constant, glucose_absorbtion_rate_constant, digestion_rate_constant
%[T, insulin, glucose] = sim_glucose(18*10^-5, 21e-6, 0.010, 0.008, 2500, 4000, 500000, 0.1, 130);
%Old, will be modified to fit new data
%[T, insulin, glucose] = sim_glucose(18*10^-5, 21e-6, 0.010, 0.008, 14000, 4000, 500000, 0.016, 80);
[T, insulin, glucose] = sim_glucose(6*10^-5,   5e-6,  0.09,  0.008, 20000, 5500, 700,    0.016, 480);

plot(T, insulin, 'r.');
%or
%plot(T, glucose, 'g.');