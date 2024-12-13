<App>
  <Include src="./functions.rsx" />
  <UrlFragments id="$urlFragments" value={{ ordered: [] }} />
  <Include src="./src/drawerFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <IconText
          id="iconText1"
          icon="bold/interface-text-formatting-text-square"
          style={{ ordered: [{ fontSize: "h4Font" }, { fontWeight: "700" }] }}
          text="Asset Order Review"
          textSize="h4"
        />
      </Header>
      <View id="878f3" viewKey="View 1">
        <Text
          id="text2"
          value="👋 **Hello {{ current_user.firstName || 'friend' }}!** 

Welcome to the Asset Order Review Dashboard! This centralized hub allows the Fulfillment Team to review, verify, and approve asset orders efficiently. Ensure all required checks are completed before proceeding to the next step in the order workflow.

**Pending Approvals**
Review asset orders awaiting approval. Ensure compliance with order guidelines, proper documentation, and accurate asset specifications before marking as approved.

**Order Summary**
View detailed information about each order, including order ID, asset type, quantity, and requested fulfillment date. Click on an order to expand its details.

**Action Required**
These orders have issues that require your attention. Resolve flagged items or provide additional documentation to proceed."
          verticalAlign="center"
        />
      </View>
    </Container>
    <Table
      id="taskTable"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getUserTasks.data.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: "" }}
      emptyMessage="No tasks exist yet. Run the workflow to create one."
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c3bc1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={133}
        summaryAggregationMode="none"
      />
      <Column
        id="7cfe8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="taskName"
        label="Task name"
        placeholder="Select option"
        position="center"
        size={245}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="af236"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="workflowName"
        label="Workflow name"
        placeholder="Select option"
        position="center"
        size={111}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="37c1a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        optionList={{
          manualData: [
            {
              ordered: [
                { value: "Submitted" },
                { color: "rgb(167, 243, 208)" },
              ],
            },
            {
              ordered: [
                { value: "Expired\n" },
                { color: "rgb(253, 230, 138)" },
              ],
            },
            {
              ordered: [
                { value: "Cancelled\n" },
                { color: "rgb(254, 202, 202)" },
              ],
            },
            {
              ordered: [{ value: "Pending" }, { color: "rgb(238, 207, 243)" }],
            },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={152}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="68d9c"
        alignment="left"
        editable="false"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="context"
        label="Task context"
        placeholder="Enter value"
        position="center"
        size={363}
        summaryAggregationMode="none"
      />
      <Column
        id="fae99"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={172}
        summaryAggregationMode="none"
      />
      <Column
        id="4e538"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="workflowRelease"
        label="Workflow release"
        placeholder="Enter value"
        position="center"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="5f1e6"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="userTaskLink"
        label="Task URL"
        placeholder="Enter value"
        position="center"
        size={149}
        summaryAggregationMode="none"
      />
      <Action
        id="4602d"
        icon="bold/interface-arrows-button-right-duoble"
        label="Order Details"
      >
        <Event
          event="clickAction"
          method="show"
          params={{ ordered: [] }}
          pluginId="drawerFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
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
          pluginId="taskTable"
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
          pluginId="taskTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Submit User Task"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Text id="text1" value="**Task Output:**" verticalAlign="center" />
        <Checkbox id="checkbox1" label="Approved" labelWidth="100" />
        <TextArea
          id="textArea1"
          autoResize={true}
          label="Comment"
          labelPosition="top"
          minLines={2}
          placeholder="These notes are internal."
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="submitUserTask"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</App>
