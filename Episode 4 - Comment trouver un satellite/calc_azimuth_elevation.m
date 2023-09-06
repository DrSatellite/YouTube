%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Dr.Satellite
% Date: 06/09/2023
% Revision: 1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
clc;

% La position de Lara Croft
lara_lat_deg = 48.814; % Latitude (°N)
lara_lon_deg = 2.084; % Longitude (°E)
lara_alti_km = 0; % Altitude (km)

% La position du satellite
sat_lat_deg = 0; % Latitude (°N)
sat_lon_deg = 64.15; % Longitude (°E)
sat_alti_km = 35786; % Altitude (km)

% Constante
rayonTerre_km = 6378;

% Azimuth
if lara_lat_deg > 0 % Hémisphère Nord
    azimuth_deg = atand( tand(lara_lon_deg-sat_lon_deg)/ ...
                            sind(lara_lat_deg) ) + 180;
elseif lara_lat_deg < 0 % Hémisphère Sud
    azimuth_deg = atand( tand(lara_lon_deg-sat_lon_deg)/ ...
                            sind(lara_lat_deg) );
else
    azimuth_deg = NaN;
end

% Elevation
elevation_deg = atand( ...
    ( cosd(lara_lon_deg-sat_lon_deg)*cosd(lara_lat_deg) - ...
    (rayonTerre_km + lara_alti_km)/(rayonTerre_km + sat_alti_km) ) / ...
    sqrt( 1-cosd(lara_lon_deg-sat_lon_deg)^2*cosd(lara_lat_deg)^2 ) ...
    );

% Result
fprintf("Azimuth = %1.1f deg\nElevation = %1.1f deg\n", azimuth_deg, ...
    elevation_deg);