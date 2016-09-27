function [T,Y]=insulin_simulation(S0,B0,ka,ke)
[T,Y]=forward_euler(@insulin_flow,0:1:300,[S0 B0]);
    function res=insulin_flow(stocks)
    S=stocks(1);    %insulin concentration in subcataneous tissues
    B=stocks(2);    %insulin concentration in blood
    i=0;    %injection
    Sflow=i-ka * S / ( 1 + B );          %injection+absorption
    Bflow=ka * S / ( 1 + B ) - ke * B;   %absorption+elimination
    res=[Sflow; Bflow];
    end
end   