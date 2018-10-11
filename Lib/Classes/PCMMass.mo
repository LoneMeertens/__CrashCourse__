within Lib.Classes;
model PCMMass
             // extension of partial cap: variable capacity value depending on the temperature of the phase-changing material

  extends PartialMass;

  parameter Modelica.SIunits.HeatCapacity CMax=30000;
  parameter Modelica.SIunits.Temperature TNom=330;

equation
  // conditional capacity value
  if T<TNom-5 or T>TNom+5 then
    C=CNom;
  else
    C=CNom+(CMax-CNom)/2+(CMax-CNom)/2*sin(2*Modelica.Constants.pi*(T/(10))+3.1415/2);
  end if;

end PCMMass;
