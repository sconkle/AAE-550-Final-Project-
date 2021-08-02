## AAE 550 Final Project
Multi Objective Optimization of a Composite Longboard Deck using a Sequential Quadratic Programming algorithm in Matlab

### mass.m 
  Function that calculates mass of the board given width and thickness

### deflection.m 
  Function that calculates deflection of the board given width and thickness
  
### boardcon.m 
  List of constraints for the optimization, one being the rupture stress of the board, and the other 4 being bounds for width and thickness

### mass2.m / deflection2.m / boardcon2.m
  Almost identical to their original functions, but takes composite material into account to modify physical properities. 

### weightsum1.m 
  Function that sets up a weighted sum approach and sets the width and deflection constraints of the board at equal importance for the optimization.

### finalscript.m 
  The script of the project. Sets initial conditions and settings for the optimization and uses 'fmincon' and mass.m and deflection.m to find the lowest values for these variables, providing a starting point for the optimization. Next, global variables are introduced that represent precentages of bamboo and maple present in the board, these are used to modify the physical properites of the board. Then at each of these incremental percentages, the optimization is ran and the optimal width and thickness for the lowest weight and deflection is found. The results of these different trials can later compilated into a Pareto Frontier, giving us the optimal percentages of bamboo and maple for a composite board. 
