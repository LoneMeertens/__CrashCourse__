within Lib.Example;
model FixedPressure "Fixes the absolute pressure in a hydraulic circuit"
  parameter Modelica.SIunits.Pressure p "absolute pressure";

  FlowPort flowPort
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
equation
  flowPort.p=p;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}),
                   graphics={Ellipse(
          extent={{-100,100},{98,-100}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
                             Text(
          extent={{-16,22},{16,-18}},
          lineColor={0,0,255},
          fillColor={255,128,0},
          fillPattern=FillPattern.Solid,
          textString="P"),
        Text(
          extent={{-100,78},{100,38}},
          lineColor={0,0,255},
          textString="%name")}));
end FixedPressure;
