<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Page page1"
  urlSlug="page1-1"
>
  <Folder id="session">
    <JavascriptQuery
      id="handleNewThread"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/handleNewThread.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RetoolAIQuery
      id="generateThreadName"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      instruction={
        'Given the prompt below, return a 3-5 word summary of the topic to be used as a label in an application. You don\'t need to include nouns like "explanation" in your summary, that is inferred. DO NOT return any quotes or extraneous characters. Do not return punctuation.\n\nPrompt: {{ messages}}'
      }
      isMultiplayerEdited={false}
      metadata={null}
      model="gpt-4o"
      multimodalModel="gpt-4o-vision-preview"
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
      transformer={
        "// gpt likes to add extraneous quotes?\nreturn data.charAt(0) === '\"' ? (data.charAt(data.length - 1) === '\"' ? data.slice(1, -1) : data.slice(1)) : (data.charAt(data.length - 1) === '\"' ? data.slice(0, -1) : data);\n"
      }
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateSessionText"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RetoolAIQuery>
    <SqlQueryUnified
      id="deleteSession"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/deleteSession.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSessions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <JavascriptQuery
      id="createInitialSession"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/createInitialSession.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getSessions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getSessions.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
      resourceTypeOverride=""
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createInitialSession"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="addSession"
      actionType="INSERT"
      changeset={
        '[{"key":"text","value":"New thread"},{"key":"created_at","value":"{{ moment() }}"},{"key":"owner","value":"{{ current_user.email}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      resourceDisplayName="retool_db"
      resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="gpt_chat_sessions"
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updateSessionText"
      actionType="UPDATE_BY"
      changeset={'[{"key":"text","value":"{{generateThreadName.data}}"}]'}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={'[{"key":"id","value":"{{listbox1.value}}","operation":"="}]'}
      resourceDisplayName="retool_db"
      resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="gpt_chat_sessions"
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSessions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="chats">
    <State
      id="chatMessages"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
    />
    <JavascriptQuery
      id="updateStream"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateStream.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleChatSubmission"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/handleChatSubmission.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getMessagesForThread"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/getMessagesForThread.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RetoolAIQuery
      id="sendMessgeToGpt"
      customSystemMessage="You're a intelligent, polite, helpful assistent, having a conversation with a single user. Your goal is to answer their question, query, or prompt comprehensively and concisely. 
"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      instruction="Prompt from the user: {{messages.currentMessage}}

Previous message thread, for context: {{messages.lastMessages}}"
      isMultiplayerEdited={false}
      metadata={null}
      model="gpt-4o"
      multimodalModel="gpt-4o-vision-preview"
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="deleteMessages"
      actionType="DELETE_BY"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={'[{"key":"id","value":"{{listbox1.value}}","operation":"="}]'}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/deleteMessages.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="chat_gpt_sessions"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="deleteSession"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <State
      id="streamTimeoutId"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
    />
    <JavascriptQuery
      id="setUp"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/setUp.js", "string")}
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="addMessageToDb"
      actionType="INSERT"
      changeset="[]"
      changesetIsObject={true}
      changesetObject="{{ messageObject }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      resourceDisplayName="retool_db"
      resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
      runWhenModelUpdates={false}
      tableName="gpt_chat_messages"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Frame
    id="$main7"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ ordered: [{ canvas: "rgb(248, 248, 248)" }] }}
    type="main"
  >
    <Include src="./mainCanvasContainer.rsx" />
  </Frame>
</Screen>
