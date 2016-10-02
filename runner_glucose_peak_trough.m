insulin_minimum = 0;
insulin_maximum = 40e-5;
step_size = 1e-5;
start_time = 60;
end_time = 180;
hypo_lvl = 3500;
hyper_lvl = 10000;

step_num = floor( (insulin_maximum - insulin_minimum) / step_size );

%B0 = 2.1e-5;
B0 = 5e-6;
%ka = 0.010;
ka = 0.090;
ke = 0.008;
%food_glucose = 14000;
food_glucose = 20000;
%blood_glucose = 4000;
blood_glucose = 5500;
%glucose_consumption_rate_constant = 500000;
glucose_consumption_rate_constant = 700;
glucose_absorbtion_rate_constant = 0.016;
%digestion_rate_constant = 80;
digestion_rate_constant = 480;

mins = zeros(step_num, 1);
maxs = zeros(step_num, 1);
xs = zeros(step_num, 1);

for i = 1 : step_num
    
    S0 = insulin_minimum + (i * step_size);
    [T, insulin, glucose] = sim_glucose(S0, B0, ka, ke, food_glucose, blood_glucose, glucose_consumption_rate_constant, glucose_absorbtion_rate_constant, digestion_rate_constant);
    
    mins(i) = min(glucose(start_time:end_time));
    maxs(i) = max(glucose(start_time:end_time));
    xs(i) = S0;
    
end

hold on;
plot(xs, mins);
plot(xs, maxs);
plot([xs(1), xs(length(xs))], [hypo_lvl, hypo_lvl]);
plot([xs(1), xs(length(xs))], [hyper_lvl, hyper_lvl]);
    