<DrawerFrame
  id="newAssetDrawer"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="medium"
>
  <Header>
    <Text id="drawerTitle1" value="### New Asset" verticalAlign="center" />
    <Button
      id="drawerCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="newAssetDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="newAssetType"
      data="{{getAllTypes.value}}"
      emptyMessage="No options"
      iconBefore="bold/interface-bookmark-tag"
      label="Asset Type"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select Type"
      showClear={true}
      showSelectionIndicator={true}
      values=""
    />
    <TextInput
      id="newAssetMedia"
      iconBefore="bold/interface-link"
      label="Link to Media"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="newAssetName"
      label="Name"
      labelPosition="top"
      placeholder="Enter name of asset"
    />
    <TextArea
      id="newAssetDescription"
      autoResize={true}
      label="Description"
      labelPosition="top"
      maxLines="5"
      minLines={2}
      placeholder="Enter descirption of asset"
    />
    <Select
      id="newAssetLanguage"
      data="{{ languages.value }}"
      emptyMessage="No options"
      label="Language"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select asset language"
      showSelectionIndicator={true}
      values="{{ item.name }}"
    />
    <Select
      id="newAssetCountry"
      data="{{ countries.value }}"
      emptyMessage="No options"
      label="Country"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select asset country origin"
      showSelectionIndicator={true}
      values="{{ item.name }}"
    />
    <NumberInput
      id="newAssetSpend"
      currency="USD"
      format="currency"
      inputValue={0}
      label="Spend"
      labelPosition="top"
      placeholder="Enter value"
      showClear={true}
      showSeparators={true}
      value={0}
    />
  </Body>
  <Footer>
    <Button id="button2" text="Save & Submit">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addAsset"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</DrawerFrame>
