%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Dr.Satellite
% Date: 06/09/2023
% Revision: 1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
clc;

% Constantes
constGrav_km3_kg1_s2 = 6.6743e-20; % (km^3*kg^(-1)*s^(-2))
rayonTerre_km = 6378; % (km)
masseTerre_kg = 5.9722e24; % (kg)
periodeTerre_s = 86164; % (s)

% Hauteur Tour
hauteurTour_km = ( ...
    (constGrav_km3_kg1_s2 * masseTerre_kg * periodeTerre_s^2)/(4*pi^2) ...
    )^(1/3) - rayonTerre_km;

% Résultat
fprintf("Hauteur de la tour de Tsiolkovski = %1.0f km\n", hauteurTour_km);