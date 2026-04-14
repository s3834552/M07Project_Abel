/*Jordan Abel Project 7*/
PROC PHREG Data=Survival_Analysis Plots=survival; 
      Model tenure*censor(1)=Risk_appetite Fund_performance Inv_potential Inv_involvement AUM Complex_prod Complaints 
                                      / Selection=stepwise Slentry=0.25 Slstay=0.15 Details; 
      Assess var = (Risk_appetite Fund_performance Inv_potential Inv_involvement AUM           Complex_prod Complaints)  PH / Resample; 
 
RUN; 