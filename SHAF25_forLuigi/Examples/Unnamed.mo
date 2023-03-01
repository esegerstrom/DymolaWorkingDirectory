within SHAF25_forLuigi.Examples;
model Unnamed
  SHAF25_component_scalable_linear sHAF25_only_linear
    annotation (Placement(transformation(extent={{-6,-10},{12,10}})));
  Modelica.Mechanics.Rotational.Sources.TorqueStep torqueStep1(
    stepTorque=-125000.01,
    offsetTorque=0,
    startTime=5)
    annotation (Placement(transformation(extent={{40,-10},{20,10}})));
  Modelica.Blocks.Sources.Step step(height=125000, startTime=5)
    annotation (Placement(transformation(extent={{-46,-10},{-26,10}})));
equation
  connect(torqueStep1.flange, sHAF25_only_linear.flange_b1)
    annotation (Line(points={{20,0},{12.3,0}}, color={0,0,0}));
  connect(step.y, sHAF25_only_linear.small_torque)
    annotation (Line(points={{-25,0},{-7.5,0}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=11,
      Interval=0.001,
      __Dymola_Algorithm="Dassl"));
end Unnamed;
