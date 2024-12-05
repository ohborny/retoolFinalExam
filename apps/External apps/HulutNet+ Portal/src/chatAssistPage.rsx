<Screen
  id="chatAssistPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="getSupportChats"
    query={include("../lib/getSupportChats.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getMessages"
    notificationDuration={4.5}
    query={include("../lib/getMessages.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="addMessage"
    actionType="INSERT"
    changeset={
      '[{"key":"thread_id","value":"{{ selectedThread.value.data.id }}"},{"key":"send_email","value":"{{ current_user.email }}"},{"key":"message_text","value":"{{ chatMessageInput.value }}"}]'
    }
    editorMode="gui"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="support_messages"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="chatMessageInput"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getMessages"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Function id="messages" funcBody={include("../lib/messages.js", "string")} />
  <State id="selectedThread" />
  <RetoolAIQuery
    id="generateResponse"
    customSystemMessage="You are a helpful and polite support agent"
    customTemperature=".7"
    defaultModelInitialized={true}
    instruction="{{ selectedThread.value.data.text }}"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <Include src="./splitPaneFrame1.rsx" />
  <Frame
    id="$main6"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text id="text7" value="###### Chat Assist" verticalAlign="center" />
    <Text
      id="text8"
      value="Ask Tate, our AI trained bot, any questions about using HuluNet+ Asset Management."
      verticalAlign="center"
    />
    <ListViewBeta
      id="listView5"
      _primaryKeys="{{ item.id }}"
      data="{{ getSupportChats.data }}"
      itemWidth="200px"
      numColumns={3}
      padding="12px"
    >
      <Container
        id="container14"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="12px"
        showBody={true}
        style={{
          ordered: [
            {
              border:
                "{{selectedThread.value.index == i ? 'primary': '#F6F6F6'}}",
            },
          ],
        }}
      >
        <Header>
          <Text
            id="containerTitle18"
            value="#### {{ item }}"
            verticalAlign="center"
          />
        </Header>
        <View id="18ca7" viewKey="View 1">
          <Text
            id="text17"
            value="{{ moment(item.created_at).fromNow() }}"
            verticalAlign="center"
          />
          <Text
            id="text19"
            value="##### {{ item.title }}"
            verticalAlign="center"
          />
          <Text
            id="text20"
            value="**{{ item.status }}**"
            verticalAlign="center"
          />
        </View>
        <Event
          event="click"
          method="setIn"
          params={{ ordered: [{ value: "{{ i }}" }, { keyPath: "['index']" }] }}
          pluginId="selectedThread"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setIn"
          params={{
            ordered: [
              { keyPath: "['data']" },
              { value: "{{ formatDataAsArray(getSupportChats.data)[i] }}" },
            ],
          }}
          pluginId="selectedThread"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </Container>
    </ListViewBeta>
  </Frame>
</Screen>
