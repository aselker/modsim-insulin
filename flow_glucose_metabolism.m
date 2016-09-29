function out = flow_glucose_metabolism (blood_glucose, blood_insulin, digestion_rate_constant)

  out = blood_glucose * blood_insulin * digestion_rate_constant;

end
