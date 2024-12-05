<Screen
  id="assetMetricsPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="getAllOrders"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getAllOrders.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Function
    id="transformOrdersOverTime"
    funcBody={include("../lib/transformOrdersOverTime.js", "string")}
  />
  <Frame
    id="$main5"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
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
      <View id="fdbd1" viewKey="Budget Spent on Asset Types" />
      <View id="89911" viewKey="Delivery Rate " />
    </Container>
  </Frame>
</Screen>
