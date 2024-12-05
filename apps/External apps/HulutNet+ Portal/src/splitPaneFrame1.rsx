<SplitPaneFrame
  id="splitPaneFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  position="right"
  showFooterBorder={false}
  showHeaderBorder={false}
  width="70%"
>
  <Container
    id="container10"
    footerPadding="12px {{ viewport.width < 1200 ? 12: (viewport.width-1200)/2}}px"
    headerPadding="14px {{ viewport.width < 1200 ? 12: (viewport.width-1200)/2}}px"
    padding="12px {{ viewport.width < 1200 ? 12: (viewport.width-1200)/2}}px"
    showBody={true}
    showFooter={true}
    style={{ ordered: [{ background: "rgba(253, 253, 253, 1)" }] }}
  >
    <View id="8c891" viewKey="View 1">
      <ListViewBeta
        id="listView4"
        _primaryKeys="{{ i }}"
        data="{{ messages.value }}"
        itemWidth="200px"
        margin="0"
        numColumns={3}
        padding="0"
      >
        <Container
          id="container11"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="12px {{ i % 2 != 0 ? 12:120 }}px 12px {{ i % 2 == 0 ? 12:120 }}px"
          padding="12px"
          showBody={true}
          style={{ ordered: [{ borderRadius: "24px" }] }}
        >
          <View id="c2172" viewKey="View 1">
            <Text
              id="containerTitle16"
              value="{{ item.message_text }}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </ListViewBeta>
    </View>
    <Footer>
      <Container
        id="group14"
        _gap="0px"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      >
        <View id="186f9" viewKey="View 1">
          <Container
            id="container12"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            margin="0"
            padding="0"
            showBody={true}
          >
            <Header>
              <Text
                id="containerTitle17"
                value="#### Container title"
                verticalAlign="center"
              />
            </Header>
            <View id="e79e3" viewKey="View 1">
              <Button
                id="button8"
                heightType="fill"
                iconBefore="bold/mail-send-email"
                tooltipText="Send"
              >
                <Event
                  event="click"
                  method="trigger"
                  params={{ ordered: [] }}
                  pluginId="addMessage2"
                  type="datasource"
                  waitMs="0"
                  waitType="debounce"
                />
              </Button>
              <Button
                id="button9"
                iconBefore="bold/interface-arrows-round-right"
                style={{ ordered: [] }}
                styleVariant="outline"
                tooltipText="Reset"
              />
            </View>
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="addMessage"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Container>
          <TextArea
            id="chatMessageInput"
            autoResize={true}
            label=""
            labelPosition="top"
            minLines="4"
            value="{{ generateResponse.data }}"
          />
        </View>
      </Container>
    </Footer>
  </Container>
</SplitPaneFrame>
