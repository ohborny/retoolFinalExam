<Container
  id="mainCanvasContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
  style={{ ordered: [{ borderRadius: "12px" }] }}
>
  <Header>
    <Button
      id="button4"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-bin-5"
      loading="{{deleteMessages.isFetching || deleteSession.isFetching}}"
      style={{
        ordered: [
          { borderRadius: "4px" },
          { icon: "rgba(99, 99, 99, 1)" },
          { border: "rgba(207, 207, 207, 0)" },
        ],
      }}
      styleVariant="outline"
      tooltipText="Delete thread"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="deleteMessages"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "" }] }}
        pluginId="chatMessages"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="bdc9c" viewKey="View 1">
    <ListViewBeta
      id="chatListView"
      _primaryKeys="{{ item.id }}"
      data="{{ chatMessages.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="container7"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        showBody={true}
      >
        <View id="b6c25" viewKey="View 1">
          <Avatar
            id="avatar3"
            fallback="{{ !item.is_prompt ? 'A I' : current_user.fullName }}"
            horizontalAlign="right"
            imageSize={24}
            label=""
            labelAlign="right"
            labelPosition="left"
            marginType="normal"
            style={{
              ordered: [
                { background: "{{ !item.is_prompt? '#D9D9D9' : '#9ED8BD' }}" },
              ],
            }}
          />
          <Text
            id="text22"
            heightType="fixed"
            marginType="normal"
            value="**{{ item.is_prompt ? 'You':'AI'}}**"
            verticalAlign="center"
          />
          <Text
            id="text23"
            marginType="normal"
            value="{{ item.prompt_response}}"
            verticalAlign="center"
          />
        </View>
      </Container>
    </ListViewBeta>
    <Button
      id="button11"
      iconAfter="bold/interface-edit-write-1"
      loading="{{addSession.isFetching}}"
      margin="0"
      marginType="normal"
      style={{ ordered: [{ borderRadius: "24px" }] }}
      text="New thread"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="handleNewThread"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="container8"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      margin="0"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
      showHeader={true}
      style={{ ordered: [] }}
    >
      <Header>
        <Text id="text21" value="##### **Threads**" verticalAlign="center" />
      </Header>
      <View id="f7da6" viewKey="View 1">
        <Listbox
          id="listbox1"
          captionByIndex="{{ moment(item.created_at).format('MMMM DD, YYYY')}}"
          colorByIndex=""
          data="{{ getSessions.data }}"
          fallbackTextByIndex=""
          iconByIndex=""
          label=""
          labelPosition="top"
          labels="{{ item.text}}"
          margin="0"
          marginType="normal"
          style={{
            ordered: [
              { borderRadius: "4px" },
              { selectedBackground: "rgba(238, 239, 239, 1)" },
              { hoverBackground: "rgba(238, 238, 238, 0.98)" },
              { background: "rgb(248, 248, 248)" },
            ],
          }}
          value="{{ self.values[0] }}"
          values="{{ item.id }}"
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="setUp"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Listbox>
      </View>
    </Container>
  </View>
  <Footer>
    <Container
      id="container15"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{
        ordered: [
          { background: "rgba(255, 255, 255, 1)" },
          { borderRadius: "44px" },
          { border: "rgba(184, 184, 184, 1)" },
        ],
      }}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="38982" viewKey="View 1">
        <TextInput
          id="textInput3"
          disabled=""
          label=""
          labelPosition="top"
          style={{
            ordered: [
              { background: "rgba(255, 255, 255, 1)" },
              { border: "rgba(224, 224, 224, 0)" },
              { accent: "rgba(31, 127, 140, 0)" },
            ],
          }}
        >
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="handleChatSubmission"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </TextInput>
        <ProgressCircle
          id="progressCircle1"
          hidden="{{!sendMessgeToGpt.isFetching}}"
          horizontalAlign="right"
          indeterminate={true}
          style={{ ordered: [] }}
          value={60}
        />
        <Button
          id="button12"
          hidden="{{sendMessgeToGpt.isFetching}}"
          horizontalAlign="right"
          iconBefore="bold/interface-arrows-up"
          marginType="normal"
          style={{ ordered: [{ borderRadius: "24px" }] }}
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="handleChatSubmission"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Spacer id="spacer3" />
  </Footer>
</Container>
