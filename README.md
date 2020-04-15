# Linear_Optimization_with_AMPL_1  
A basic linear programming solution to maximize the profit for metals mining companies.  

## WHY AMPL?  
AMPL (A Mathematical Programming Language) is an algebraic modeling language to describe and solve high-complexity problems for large-scale mathematical computing (i.e., large-scale optimization and scheduling-type problems)

#DESCRIPTION OF THE PROBLEM:  
A mining company extracts minerals from ore mined at two different sites.   
Each ton of ore type i contains XCi% copper, XZi% zinc and XMi% magnesium.  
Ore type i costs Ci per ton.   
The company would like to buy enough ore to extract at least ExC tons of copper,  ExZ tons of zinc, and ExM tons of magnesium in the least costly manner.  

        Decision Variables:  
          Xi := Amount of or type i  
        Objective Function:  
          here we minimize the objective funtion with min()  
          MIN(ΣCi Xi) ; with Ci Cost of Ore type i and Xi ist the decision variable  
        Constraints (for i in Ore type):  
           Σ XCi * Xi >= ExC  
           Σ XZi * Xi >= ExZ  
           Σ XMi * Xi >= ExM  

The LP-Solution provide not only the optimal solution but also using the the variable (display _cons.slack):  
 1) In which price range of each ore type the solution remains optimal:  
    For that we look at the _var.sensobjlo values to find out the price range of each ore type.  
    
 2) Which constraint is binding and so the slackness relationship
    To find out which constraint is binding we use the Shadow Price.      
    The shadow price is written in AMPL as “_con”, Binding components are depleted from “_con” to “_con.slack”.  
 
 3) How much is the company willing to pay for an additional ton of ore type i. 

FILES:  
  1 MODEL (*.mod)  
  1 DATA (*.dat)  
  1 RUN (*.run)  
