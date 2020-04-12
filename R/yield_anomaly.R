#represents yield anomaly (ton acre"1). Subscript numbers indicate month of climate variable, with negative values denoting a month from the year prior to harvest. Tn, minimum temperature (8C); Tx, maximum temperature (8C); P, precipitation (mm).

# Y = -0.015Tn - 0.0046Tn^2 + 0.0043P1^2 + 0.28

#Tn = Minimum temperature in month two months prior to harvest (February) Celsuis 
#P1 = Precipitation in month before harvest (March) mm

yield_anom=function(Tmf,Pm) {
  result= -0.015*Tmf - 0.0046*(Tmf^2) + 0.0043*(Pm^2) + 0.28
  return(result)
}
