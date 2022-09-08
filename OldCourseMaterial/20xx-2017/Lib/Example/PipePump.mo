within Lib.Example;
model PipePump "Tester for pipe and pump"

  PipeWithHeatPort simplePipe
    annotation (Placement(transformation(extent={{-14,26},{6,46}})));
  SimplePump simplePump
    annotation (Placement(transformation(extent={{42,26},{62,46}})));
  Lib.Example.FixedPressure prescribedPressure(p=200000)
    annotation (Placement(transformation(extent={{12,52},{32,72}})));
  Lib.Example.FixedHeatFlow prescribedHeatFlow(Q=100)
    annotation (Placement(transformation(extent={{-48,54},{-28,74}})));
equation

  connect(simplePipe.flowPort_b, simplePump.flowPort_a) annotation (Line(
      points={{6,36},{42,36}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(prescribedPressure.flowPort, simplePump.flowPort_a) annotation (Line(
      points={{32,62},{42,62},{42,36}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(prescribedHeatFlow.heatPort, simplePipe.heatPort) annotation (Line(
      points={{-28.6,64},{-4,64},{-4,37.6}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(simplePump.flowPort_b, simplePipe.flowPort_a) annotation (Line(
      points={{62,36},{66,36},{66,0},{-20,0},{-20,36},{-14,36}},
      color={0,0,255},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}),
                      graphics));
end PipePump;
