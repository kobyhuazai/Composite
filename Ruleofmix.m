function y = Ruleofmix(ff,E1f ,E2f ,Em, po12f,po12m,G12f , G12m , xi )

fm = 1-ff;

E1c = ff * E1f + fm * Em;

n_e = ( E2f/Em -1)/( E2f/Em +xi);
E2c = Em *(1+ n_e*xi*ff )/(1- n_e*ff );

po12c = po12f * ff+ po12m * fm;
po21c = po12c*E2c/E1c;

n_g = ( G12f/G12m -1)/( G12f/G12m +xi);
G12c = G12m *(1+ n_g*xi*ff )/(1- n_g*ff );

y = [E1c, E2c, po12c, po21c, G12c];
end

