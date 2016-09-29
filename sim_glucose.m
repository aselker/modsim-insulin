function [T, insulin, glucose] = sim_glucose(S0, B0, ka, ke, food_glucose, blood_glucose, glucose_consumption_rate_constant, glucose_absorbtion_rate_constant, digestion_rate_constant)

    [T, insulin] = insulin_simulation(S0, B0, ka, ke);
    
    stomach_glucose = 0;
        
    for i = 1 : 1 : length (insulin (:,1))
                
        blood_glucose = blood_glucose + flow_glucose_absorbtion(stomach_glucose, glucose_absorbtion_rate_constant) - flow_glucose_metabolism(blood_glucose, insulin(i, 2), digestion_rate_constant);
        stomach_glucose = stomach_glucose + flow_glucose_consumption(food_glucose, glucose_consumption_rate_constant) - flow_glucose_absorbtion(stomach_glucose, glucose_absorbtion_rate_constant) ;
        food_glucose = food_glucose - flow_glucose_consumption(food_glucose, glucose_consumption_rate_constant);

        glucose(i) = blood_glucose;
        
    end

end