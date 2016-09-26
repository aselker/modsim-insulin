function out = general_glucose_from_usf (a0, g0, k1, k2, t)

  out = a0 * ( k1 / (k2-k1) ) * ( e^(-k1*t) - e^(-k2*t) ) + g0;

endfunction
