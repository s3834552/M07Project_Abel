/*Jordan Abel Project 7*/
PROC LIFEREG Data=Survival_Analysis; 
   Model tenure*censor(1)= Risk_appetite Fund_performance Inv_potential Inv_involvement AUM Complex_prod Complaints/distribution=weibull; 
   Probplot; 
   Output out=new cdf=prob; 
Run; 