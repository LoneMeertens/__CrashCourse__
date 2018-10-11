within Lib.Example;
model OnOffHeatFlow "Fixes the heat flow in a HeatPort connector"

  parameter Modelica.SIunits.HeatFlowRate Q "Heat flowrate";
  input Boolean onoff "boolean on off control signal";
  Lib.ThermalMasses.ClassesAndConnectors.HeatPort heatPort
    annotation (Placement(transformation(extent={{84,-10},{104,10}})));

equation
  heatPort.Q_flow = if onoff then -Q else 0;
  annotation (Diagram(graphics), Icon(graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),       Text(
          extent={{-52,36},{42,-40}},
          lineColor={0,0,255},
          lineThickness=0.5,
          fillColor={255,128,0},
          fillPattern=FillPattern.Solid,
          textString="Q")}));
end OnOffHeatFlow;
