 %% 980 nm Quantum Well Laser Calculator 

clear; clc; 

%% Values 

hbar = 1.054e-34;  
m0 = 9.11e-31;  
eV = 1.602e-19;  
hc = 1240;  

%% Updated well bandgap using bowing 

Eg_well = 1.216; % eV (for x = 0.14) 

%% Band offsets 

Delta_Ec = 0.0642; % eV 
Delta_Ev = 0.0428; % eV 

%% Effective masses 

me_eff = 0.06 * m0; % electron mass 
mhh_eff = 0.45 * m0; % heavy hole mass 

%% Thickness sweep (nm) 

L_vals = 10:1:40; 
lambda = zeros(size(L_vals)); 

for i = 1:length(L_vals) 

L = L_vals(i) * 1e-9; % convert nm to m 

% Infinite well electron and hole energies 

Ec1 = (pi^2 * hbar^2) / (2 * me_eff * L^2) / eV; 
Ev1 = (pi^2 * hbar^2) / (2 * mhh_eff * L^2) / eV; 

% Cap energies by actual well depth 

Ec1 = min(Ec1, Delta_Ec); 
Ev1 = min(Ev1, Delta_Ev); 

% Photon energy 

Eph = Eg_well + Ec1 + Ev1; 

% Convert to wavelength 

lambda(i) = hc / Eph; 

end 

%% Display result table 

disp(' L (nm) Wavelength (nm)'); 
disp([L_vals' lambda']); 

%% Best match to 980 nm 

[~, idx] = min(abs(lambda - 980)); 
fprintf('\nClosest to 980 nm: L = %d nm gives lambda = %.2f nm\n', L_vals(idx), lambda(idx)); 