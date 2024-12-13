<Container
  id="tabbedContainer3"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs3"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer3"
      value="{{ self.values[0] }}"
    >
      <Option id="f38c8" value="Tab 1" />
      <Option id="57b32" value="Tab 2" />
      <Option id="5b3dd" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="57395" viewKey="Orders Over Time">
    <Chart
      id="lineChart1"
      barMode="group"
      barOrientation=""
      chartType="line"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisLineWidth={1}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowLine={true}
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitle="Time"
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxisGrid={true}
      yAxisLineWidth={1}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowLine={true}
      yAxisShowTickLabels={true}
      yAxisTickFormat=".0f"
      yAxisTickFormatMode="gui"
      yAxisTitle="Number of Orders"
    >
      <Series
        id="0"
        aggregationType="none"
        colorArray={{ array: [null] }}
        colorArrayDropDown={{ array: [null] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="top"
        datasource="{{ transformOrdersOverTime.value }}"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate={null}
        hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="spline"
        lineUnderFillMode="gradient"
        lineWidth="2"
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Primary"
        showMarkers={false}
        textTemplate="%{y}"
        textTemplateMode="manual"
        type="line"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ formatDataAsObject(transformOrdersOverTime.value).date }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ formatDataAsObject(transformOrdersOverTime.value).number_of_orders }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </View>
  <View id="fdbd1" viewKey="Budget Spent on Asset Types">
    <Text id="text25" value="**Spend by Asset Type**" verticalAlign="center" />
    <Chart
      id="barChart2"
      barGap={0.4}
      barMode="group"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitle="Asset Type"
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
      yAxisTitle="Spend"
    >
      <Series
        id="0"
        aggregationType="sum"
        colorArray={{ array: ["{{ theme.primary }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Spend by Asset Type"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ assetTypes.value }}"
        xDataMode="manual"
        yAxis="y"
        yData="{{ transformerSpendbyAssetType.value }}"
        yDataMode="manual"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
    <Text
      id="text24"
      value=" **Spend by similar assets**"
      verticalAlign="center"
    />
    <Chart
      id="stackedBarChart2"
      barGap={0.4}
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitle="Asset Name"
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
      yAxisTitle="Spend"
    >
      <Series
        id="0"
        aggregationType="none"
        colorArray={{ array: ["{{ theme.primary }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getAllAssets.data }}"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: ["type"] }}
        groupByDropdownType="source"
        groupByStyles={{
          "Art Piece": {
            ordered: [
              { markerColor: "#e5c009" },
              { markerBorderColor: "#e5c009" },
            ],
          },
          Billboard: {
            ordered: [
              { markerColor: "#cc2936" },
              { markerBorderColor: "#cc2936" },
            ],
          },
          "Social Media Post": {
            ordered: [
              { markerColor: "#499f68" },
              { markerBorderColor: "#499f68" },
            ],
          },
          Trailer: {
            ordered: [
              { markerColor: "#84bcda" },
              { markerBorderColor: "#84bcda" },
            ],
          },
          "Video Clip": {
            ordered: [
              { markerColor: "#08415c" },
              { markerBorderColor: "#08415c" },
            ],
          },
        }}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.highlight }}"
        markerSize={6}
        markerSymbol="circle"
        name="All Assets"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getAllAssets.data.name }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getAllAssets.data.spend }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </View>
  <View id="89911" viewKey="Delivery Rate ">
    <Statistic
      id="statistic1"
      currency="USD"
      formattingStyle="percent"
      label="Delivery Rate"
      labelCaption="Since last month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="0.02"
      showSeparators={true}
      value={7552.8}
    />
    <Statistic
      id="statistic2"
      currency="USD"
      label="Orders Placed"
      labelCaption="Current"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ transformer7.value}}"
    />
  </View>
</Container>
