within SHAF25_forLuigi.Examples;
model SHAF25_only
  extends Modelica.Icons.Example;
  SHAF25.Components.Shafts.Shaft_Scalable_v2_heqk shaft(
    N=5,
    H={0.176,1.427,1.428,1.428,0.869},
    K={17.78,27.66,31.31,37.25})
    annotation (Placement(transformation(extent={{-8,-10},{12,10}})));
  Modelica.Mechanics.Rotational.Sources.TorqueStep torqueStep(
    stepTorque=125000,
    offsetTorque=0,
    startTime=5)
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Modelica.Mechanics.Rotational.Sources.TorqueStep torqueStep1(
    stepTorque=-125000.01,
    offsetTorque=0,
    startTime=5)
    annotation (Placement(transformation(extent={{40,-10},{20,10}})));
equation
  connect(torqueStep1.flange, shaft.flange_b)
    annotation (Line(points={{20,0},{12.4,0}}, color={0,0,0}));
  connect(torqueStep.flange, shaft.flange_a)
    annotation (Line(points={{-20,0},{-8.4,0}}, color={0,0,0}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=50,
      Interval=0.04,
      __Dymola_Algorithm="Dassl"));
end SHAF25_only;
