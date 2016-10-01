insulin_minimum = 0;
insulin_maximum = 40e-5;
step_size = 1e-5;

step_num = floor( (insulin_maximum - insulin_minimum) / step_size );

%S0 = 18e-5;
B0 = 2.1e-5;
ka = 0.010;
ke = 0.008;
food_glucose = 14000;
blood_glucose = 4000;
glucose_consumption_rate_constant = 500000;
glucose_absorbtion_rate_constant = 0.016;
digestion_rate_constant = 80;

mins = zeros(step_num, 1);
maxs = zeros(step_num, 1);

for i = 1 : step_num
    
    S0 = insulin_minimum + (i * step_size);
    [T, insulin, glucose] = sim_glucose(S0, B0, ka, ke, food_glucose, blood_glucose, glucose_consumption_rate_constant, glucose_absorbtion_rate_constant, digestion_rate_constant);
    
    mins(i) = min(glucose);
    maxs(i) = max(glucose);
    
end
    