function cellStats = measureCellStatsStruct(mesh, areas, blebStats)

% measureCellStats - calculates cell-scale statistics for a cell
%
% Copyright (C) 2025, Danuser Lab - UTSouthwestern 
%
% This file is part of Morphology3DPackage.
% 
% Morphology3DPackage is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% Morphology3DPackage is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with Morphology3DPackage.  If not, see <http://www.gnu.org/licenses/>.
% 
% 

% update the bleb count 
cellStats.blebCount = blebStats.count;

% find the cell surface area
cellStats.cellSurfaceArea = sum(areas);

% find the cell volume
cellStats.cellVolume = measureMeshVolume(mesh);
