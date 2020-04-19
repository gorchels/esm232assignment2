#represents yield anomaly (ton acre"1). Subscript numbers indicate month of climate variable, with negative values denoting a month from the year prior to harvest. Tn, minimum temperature (8C); Tx, maximum temperature (8C); P, precipitation (mm).

# Y = -0.015Tn - 0.0046Tn^2 + 0.0043P1^2 + 0.28

#Tn = Minimum temperature in month two months prior to harvest (February) Celsuis 
#P1 = Precipitation in month before harvest (March) mm

yield_anomaly=function(Tmf,Pm, s1=-0.015,s2=0.0046,s3=0.0043,int=0.28) {
 
  #error checking
  Pm= ifelse(Pm < 0, return("Precipitation values are less than 0"), Pm) 
  Tmf = ifelse(Tmf > 30, return("Temperature values high, did you use maximum temperature?"), Tmf)

  #function equation
   result= s1*Tmf - s2*(Tmf^2) + s3*(Pm^2) + int
  return(result)
}
