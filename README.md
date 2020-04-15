# Linear_Optimization_with_AMPL_1
A linear programming solution to maximize the profit for metals mining companies:

#DESCRIPTION OF THE PROBLEM:  
A mining company extracts minerals from ore mined at two different sites. 
Each ton of ore type i contains XCi% copper, XZi% zinc and XMi% magnesium.
Ore type i costs Ci per ton. 
The company would like to buy enough ore to extract at least KC tons of copper,  KZ tons of zinc, and KM tons of magnesium in the least costly manner.

Decision Variables:
  Xi := Amount of or type i
Objective Function:
  here we minimize the objective funtion with min()
  MIN(ΣCi Xi) ; with Ci Cost of Ore type i and Xi ist the decision variable
Constraints (for i in Ore type):
   Σ XCi * Xi >= KC
   Σ XZi * Xi >= KZ
   Σ XMi * Xi >= KM
   
FILES:  
  1 MODEL (*.mod)  
  1 DATA (*.dat)  
  1 RUN (*.run)  
   
