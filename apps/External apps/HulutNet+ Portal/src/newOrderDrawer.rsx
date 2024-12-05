<DrawerFrame
  id="newOrderDrawer"
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
    <Text id="drawerTitle2" value="### New Order" verticalAlign="center" />
    <Button
      id="drawerCloseButton2"
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
        pluginId="newOrderDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="newOrderType"
      emptyMessage="No options"
      itemMode="static"
      label="Order Type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="From exisiting asset"
    >
      <Option id="bf2d4" value="From exisiting asset" />
      <Option id="1eaf1" value="New" />
    </Select>
    <Date
      id="date1"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Need By Date"
      labelPosition="top"
      value="{{ new Date() }}"
    />
    <TextArea
      id="textArea3"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <Select
      id="newOrderAsset"
      data="{{ getAssets.data }}"
      emptyMessage="No options"
      hidden="{{ newOrderType.value === 'New' }}"
      label="Select Exisiting Asset"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an exisiting asset"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <Form
      id="createAssetForm"
      footerPadding="4px 12px"
      headerPadding="0"
      hidden="{{ newOrderType.value === 'From exisiting asset' }}"
      initialData=""
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showBorder={false}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "info" }] }}
    >
      <Header>
        <Text
          id="formTitle1"
          value="##### Create New Asset"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select5"
          data="{{ getAllTypes.value }}"
          emptyMessage="No options"
          formDataKey="type"
          label="Type"
          labelPosition="top"
          labels="{{ item }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <TextInput
          id="textInput7"
          formDataKey="media"
          iconBefore="bold/interface-link"
          label="Media"
          labelPosition="top"
          patternType="url"
          placeholder="retool.com"
        />
        <TextInput
          id="textInput6"
          formDataKey="name"
          label="Name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea2"
          autoResize={true}
          label="Description"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
        />
        <Select
          id="select6"
          emptyMessage="No options"
          formDataKey="language"
          itemMode="static"
          label="Language"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values={null}
        >
          <Option id="03b20" value="Option 1" />
          <Option id="9be6a" value="Option 2" />
          <Option id="16b6b" value="Option 3" />
        </Select>
        <Select
          id="select7"
          emptyMessage="No options"
          formDataKey="country"
          itemMode="static"
          label="Country"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values={null}
        >
          <Option id="1b85d" value="Option 1" />
          <Option id="5aedc" value="Option 2" />
          <Option id="0a4c8" value="Option 3" />
        </Select>
        <NumberInput
          id="numberInput1"
          currency="USD"
          format="currency"
          formDataKey="spend"
          inputValue={0}
          label="Spend"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
      </Body>
    </Form>
  </Body>
  <Footer>
    <Button id="button3" text="Save & Submit" />
  </Footer>
</DrawerFrame>
