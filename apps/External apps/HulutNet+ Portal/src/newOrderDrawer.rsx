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
      id="newOrderDate"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Need By Date"
      labelPosition="top"
      value="{{ new Date() }}"
    />
    <TextArea
      id="newOrderDescription"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <Select
      id="newOrderAssetSelection"
      data="{{ getAssets.data }}"
      emptyMessage="No options"
      hidden="{{ newOrderType.value === 'New' }}"
      label="Select Exisiting Asset"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an exisiting asset"
      showClear={true}
      showSelectionIndicator={true}
      value=""
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
          id="newOrderAssetType"
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
          id="newOrderAssetMedia"
          formDataKey="media"
          iconBefore="bold/interface-link"
          label="Media"
          labelPosition="top"
          patternType="url"
          placeholder="retool.com"
        />
        <TextInput
          id="newOrderAssetName"
          formDataKey="name"
          label="Name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="newOrderAssetDescription"
          autoResize={true}
          label="Description"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
        />
        <Select
          id="newOrderAssetLanguage"
          data="{{ languages.value }}"
          emptyMessage="No options"
          formDataKey="language"
          label="Language"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.name }}"
        />
        <Select
          id="newOrderAssetCountry"
          data="{{ countries.value }}"
          emptyMessage="No options"
          formDataKey="country"
          label="Country"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.name }}"
        />
        <NumberInput
          id="newOrderAssetSpend"
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
    <Button id="button3" submitTargetId="" text="Save & Submit">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createOrderProcess"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</DrawerFrame>
