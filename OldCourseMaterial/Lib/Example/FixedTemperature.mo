within Lib.Example;
model FixedTemperature "Fixes the temperature in a HeatPort"
  parameter Modelica.SIunits.Temperature T "constant temperature";

  Lib.ThermalMasses.ClassesAndConnectors.HeatPort heatPort
    annotation (Placement(transformation(extent={{88,-10},{108,10}})));

equation
  heatPort.T=T;
  annotation (Icon(graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
                             Text(
          extent={{-46,44},{52,-56}},
          lineColor={0,0,255},
          textString="T")}));
end FixedTemperature;
