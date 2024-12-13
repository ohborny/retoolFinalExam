<Container
  id="tabbedContainer2"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "surfacePrimary" }] }}
>
  <Header>
    <Tabs
      id="tabs2"
      alignment="center"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="55a62" value="Tab 1" />
      <Option id="1d67b" value="Tab 2" />
      <Option id="84046" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="a023b" viewKey="Details">
    <Button
      id="editDetailsButton"
      hidden="{{ assetState.value === 'Edit'}}"
      iconBefore="bold/interface-edit-brush-2"
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "Edit" }] }}
        pluginId="assetState"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text11"
      horizontalAlign="center"
      value="#### {{ assetsTable.selectedRow.name }}"
      verticalAlign="center"
    />
    <Button
      id="saveAssetDetailsButton"
      hidden="{{ assetState.value === 'View'}}"
      iconBefore="bold/interface-content-save"
      style={{ ordered: [] }}
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateAsset"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Image
      id="assetImage"
      fit="contain"
      heightType="fixed"
      hidden="{{ assetsTable.selectedRow.type !== 'Art Piece' }}"
      horizontalAlign="center"
      src="{{assetsTable.selectedRow.media}}"
    />
    <Video
      id="assetVideo"
      hidden="{{  !(assetsTable.selectedRow.type === 'Trailer' || assetsTable.selectedRow.type === 'Video Clip')}}"
      playbackRate={1}
      src="{{assetsTable.selectedRow.media}}"
      volume={1}
    />
    <TextInput
      id="selectedAssetLink"
      hidden="{{ assetState.value === 'View'}}"
      iconBefore="bold/interface-link"
      label="Asset Link"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ assetsTable.selectedRow.media }}"
    />
    <TextArea
      id="selectedDescription"
      autoResize={true}
      disabled="{{ assetState.value === 'View'}}"
      label="Description"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
      spellCheck={true}
      value="{{ assetsTable.selectedRow.description }}"
    />
    <Select
      id="selectedType"
      data="{{getAllTypes.value}}"
      disabled="{{ assetState.value === 'View'}}"
      emptyMessage="No options"
      iconBefore="bold/interface-bookmark-tag"
      label="Type"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select Type"
      showClear={true}
      showSelectionIndicator={true}
      value="{{ assetsTable.selectedRow.type }}"
      values=""
    />
    <Select
      id="selectLanguage"
      data="{{ languages.value }}"
      disabled="{{ assetState.value === 'View'}}"
      emptyMessage="No options"
      label="Language"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select language"
      showSelectionIndicator={true}
      value="{{ assetsTable.selectedRow.language }}"
      values="{{ item.name }}"
    />
    <Select
      id="selectedCountry"
      data="{{ countries.value }}"
      disabled="{{ assetState.value === 'View'}}"
      emptyMessage="No options"
      label="Country"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select country"
      showSelectionIndicator={true}
      value="{{ assetsTable.selectedRow.country }}"
      values="{{ item.name }}"
    />
    <NumberInput
      id="selectedSpend"
      currency="USD"
      disabled="{{ assetState.value === 'View'}}"
      format="currency"
      inputValue={0}
      label="Spend"
      labelPosition="top"
      placeholder="Enter value"
      showClear={true}
      showSeparators={true}
      value="{{ assetsTable.selectedRow.spend }}"
    />
  </View>
  <View id="7d000" viewKey="Orders">
    <Text id="text16" value="#### Orders" verticalAlign="center" />
    <Button id="button1" text="New Order">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="newOrderDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <ListViewBeta
      id="listView2"
      _primaryKeys="{{ i }}"
      data="{{ formatOrdersForAsset.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./container4.rsx" />
    </ListViewBeta>
  </View>
</Container>
