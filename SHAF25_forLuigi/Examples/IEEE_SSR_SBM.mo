within SHAF25_forLuigi.Examples;
model IEEE_SSR_SBM
  extends Modelica.Icons.Example;
  SHAF25.Components.GenerationUnits.GenUnit genUnit annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,90})));
  OpenIPSL.Electrical.Buses.InfiniteBus infiniteBus annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,-90})));
  OpenIPSL.Electrical.Branches.PSSE.TwoWindingTransformer twoWindingTransformer
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,62})));
  OpenIPSL.Electrical.Buses.Bus bus annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,46})));
  OpenIPSL.Electrical.Buses.Bus bus1 annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={40,10})));
  OpenIPSL.Electrical.Buses.Bus bus2 annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,-28})));
  OpenIPSL.Electrical.Buses.Bus bus3 annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,-70})));
  OpenIPSL.Electrical.Branches.PwLine pwLine annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-40,0})));
  OpenIPSL.Electrical.Branches.PwLine pwLine1 annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={40,30})));
  OpenIPSL.Electrical.Branches.PwLine pwLine2 annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={40,-10})));
  OpenIPSL.Electrical.Branches.PwLine pwLine3 annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,-50})));
  OpenIPSL.Electrical.Banks.PSSE.CSVGN1 cSVGN1_1
    annotation (Placement(transformation(extent={{60,-60},{80,-40}})));
  Modelica.Blocks.Sources.Constant const(k=0)
    annotation (Placement(transformation(extent={{36,-52},{50,-38}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=bus1.v)
    annotation (Placement(transformation(extent={{30,-82},{50,-62}})));
equation
  connect(genUnit.pwPin, twoWindingTransformer.p) annotation (Line(points={{
          -1.9984e-15,79},{-1.9984e-15,76},{1.9984e-15,76},{1.9984e-15,73}},
        color={0,0,255}));
  connect(twoWindingTransformer.n, bus.p) annotation (Line(points={{-1.9984e-15,
          51},{-1.9984e-15,48.5},{0,48.5},{0,46}}, color={0,0,255}));
  connect(bus2.p, pwLine3.n) annotation (Line(points={{0,-28},{0,-34.5},{
          5.55112e-16,-34.5},{5.55112e-16,-41}}, color={0,0,255}));
  connect(pwLine3.p, bus3.p) annotation (Line(points={{-5.55112e-16,-59},{
          -5.55112e-16,-64.5},{0,-64.5},{0,-70}}, color={0,0,255}));
  connect(bus3.p, infiniteBus.p) annotation (Line(points={{0,-70},{0,-75},{
          5.55112e-16,-75},{5.55112e-16,-80}}, color={0,0,255}));
  connect(pwLine.n, bus.p)
    annotation (Line(points={{-40,9},{-40,46},{0,46}}, color={0,0,255}));
  connect(pwLine1.n, bus.p)
    annotation (Line(points={{40,39},{40,46},{0,46}}, color={0,0,255}));
  connect(pwLine1.p, bus1.p)
    annotation (Line(points={{40,21},{40,10}}, color={0,0,255}));
  connect(bus1.p, pwLine2.n)
    annotation (Line(points={{40,10},{40,-1}}, color={0,0,255}));
  connect(pwLine2.p, bus2.p)
    annotation (Line(points={{40,-19},{40,-28},{0,-28}}, color={0,0,255}));
  connect(bus2.p, pwLine.p)
    annotation (Line(points={{0,-28},{-40,-28},{-40,-9}}, color={0,0,255}));
  connect(cSVGN1_1.p, pwLine2.n) annotation (Line(points={{70,-40},{70,10},{40,
          10},{40,-1}}, color={0,0,255}));
  connect(const.y, cSVGN1_1.V)
    annotation (Line(points={{50.7,-45},{58,-45}}, color={0,0,127}));
  connect(realExpression.y, cSVGN1_1.VOTHSG)
    annotation (Line(points={{51,-72},{58,-72},{58,-55}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=50,
      Interval=0.04,
      __Dymola_Algorithm="Dassl"));
end IEEE_SSR_SBM;
