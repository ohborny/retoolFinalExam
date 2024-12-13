<Screen
  id="assetMetricsPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="getAllOrders"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getAllOrders.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getAllAssets"
    isMultiplayerEdited={false}
    query={include("../lib/getAllAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    warningCodes={[]}
  />
  <Function
    id="transformOrdersOverTime"
    funcBody={include("../lib/transformOrdersOverTime.js", "string")}
  />
  <Function
    id="transformerSpendbyAssetType"
    funcBody={include("../lib/transformerSpendbyAssetType.js", "string")}
  />
  <State
    id="assetTypes"
    value={
      '["Art Piece", "Video Clip", "Trailer", "Billboard", "Social Media Post"]'
    }
  />
  <State
    id="variable12"
    value={
      '{\n"Art Piece": "E5C009",\n"Video Clip": "08415C",\n"Trailer": "84BCDA",\n"Billboard":"CC2936",\n"Social Media Post": "499F68"\n}'
    }
  />
  <Function
    id="transformer7"
    funcBody={include("../lib/transformer7.js", "string")}
  />
  <Frame
    id="$main5"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Include src="./tabbedContainer3.rsx" />
  </Frame>
</Screen>
