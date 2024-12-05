<Screen
  id="manageAssetsPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="getAssets"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <State
    id="getAllTypes"
    value={
      '["Social Media Post", "Trailer","Billboard","Video Clip", "Art Piece"]'
    }
  />
  <State id="assetState" value="View" />
  <SqlQueryUnified
    id="getOrdersForAsset"
    notificationDuration={4.5}
    query={include("../lib/getOrdersForAsset.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Function
    id="formatOrdersForAsset"
    funcBody={include("../lib/formatOrdersForAsset.js", "string")}
  />
  <Function
    id="filterAssets"
    funcBody={include("../lib/filterAssets.js", "string")}
  />
  <Include src="./newAssetDrawer.rsx" />
  <Include src="./newOrderDrawer.rsx" />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <DropdownButton
      id="dropdownButton1"
      _colorByIndex={["", ""]}
      _fallbackTextByIndex={["", ""]}
      _imageByIndex={["", ""]}
      _values={["", ""]}
      icon="bold/interface-arrows-down-circle-2"
      iconPosition="right"
      itemMode="static"
      overlayMaxHeight={375}
      style={{ ordered: [] }}
      text="Actions"
    >
      <Option
        id="59a77"
        icon="bold/interface-edit-design-tool-selection-wand"
        label="New Asset"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="newAssetDrawer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="3e71f"
        icon="bold/interface-download-button-2"
        label="CSV Export"
      />
    </DropdownButton>
    <Text id="text9" value="#### Assets" verticalAlign="center" />
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="21129" viewKey="View 1">
        <TextInput
          id="searchBox"
          iconBefore="bold/interface-search"
          label=""
          labelPosition="top"
          placeholder="Search"
        />
        <Select
          id="typeSearch"
          data="{{getAllTypes.value}}"
          emptyMessage="No options"
          iconBefore="bold/interface-bookmark-tag"
          label=""
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select Type"
          showClear={true}
          showSelectionIndicator={true}
          values=""
        />
        <Text id="text10" value="**Filters**" verticalAlign="center" />
      </View>
    </Container>
    <Table
      id="assetsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ filterAssets.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: "0" }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      linkedFilterId=""
      primaryKeyColumnId="1e9af"
      searchTerm="{{ searchBox.value}}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="1e9af"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={30.734375}
      />
      <Column
        id="ec6e0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={174.625}
      />
      <Column
        id="52c1d"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color: "{{ assetTypeColors }}",
        }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getAllTypes.data }}",
          valueByIndex: "{{ item.value }}",
          labelByIndex: "{{ item.value }}",
          colorByIndex: "{{ assetTypeColors.value[item.value] }}",
        }}
        placeholder="Select option"
        position="center"
        size={137.28125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="5ef84"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="media"
        label="Media"
        position="center"
        size={359.90625}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="5c72c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={237.015625}
      />
      <Column
        id="472f8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="language"
        label="Language"
        placeholder="Select option"
        position="center"
        size={81.171875}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="037d2"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={87.4375}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="14b59"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="spend"
        label="Spend"
        placeholder="Enter value"
        position="center"
        size={74.15625}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="assetsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="assetsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Include src="./tabbedContainer2.rsx" />
  </Frame>
</Screen>
