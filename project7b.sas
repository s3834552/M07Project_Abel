/*Jordan Abel Project 7*/
PROC LIFEREG Data=Survival_Analysis; 
   Model tenure*censor(1)= /distribution=exponential; 
   probplot; 
   Output out=new cdf=prob; 
Run; 