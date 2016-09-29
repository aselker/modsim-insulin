function out = flow_glucose_consumption (food, glucose_consumption_rate_constant)

    %if (food >= glucose_consumption_rate_constant)
    %    out = glucose_consumption_rate_constant;
    %else
        out = food;
    %end
    
end
