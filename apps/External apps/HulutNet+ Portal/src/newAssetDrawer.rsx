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
      id="textInput4"
      iconBefore="bold/interface-link"
      label="Link to Media"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="textInput5"
      label="Name"
      labelPosition="top"
      placeholder="Enter name of asset"
    />
    <TextArea
      id="textArea1"
      autoResize={true}
      label="Description"
      labelPosition="top"
      maxLines="5"
      minLines={2}
      placeholder="Enter descirption of asset"
    />
    <Select
      id="select3"
      emptyMessage="No options"
      itemMode="static"
      label="Language"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select asset language"
      showSelectionIndicator={true}
    >
      <Option id="1e4d8" value="Option 1" />
      <Option id="0aa78" value="Option 2" />
      <Option id="a606e" value="Option 3" />
    </Select>
    <Select
      id="select4"
      emptyMessage="No options"
      itemMode="static"
      label="Country"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select asset country origin"
      showSelectionIndicator={true}
    >
      <Option id="1e4d8" value="Option 1" />
      <Option id="0aa78" value="Option 2" />
      <Option id="a606e" value="Option 3" />
    </Select>
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
    <Button id="button2" text="Save & Submit" />
  </Footer>
</DrawerFrame>
