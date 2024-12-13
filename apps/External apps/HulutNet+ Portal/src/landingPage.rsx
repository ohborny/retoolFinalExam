<Screen
  id="landingPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Page page1"
  urlSlug="page1"
>
  <Function
    id="filteredApps"
    funcBody={include("../lib/filteredApps.js", "string")}
  />
  <State
    id="exampleApps"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value={
      '[\n    {\n        "name": "Asset Management",\n        "description": "Observe all available assets and request new assets or place new orders",\n        "pageName": "manageAssetsPage",\n        "available": true\n    },\n    {\n        "name": "Asset Metrics",\n        "description": "View the usage and dive into the data behind assets and orders.",\n        "url": "assetMetricsPage",\n        "available": true\n    },\n    {\n        "name": "Portfolio Optimization",\n        "description": "Powered by AI, we will give you suggestions on the best way to optimize your portfolio.",\n        "url": null,\n        "available": false\n    }\n]'
    }
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="Title"
      value="### Welcome, {{ current_user.firstName }}!"
      verticalAlign="center"
    />
    <TextInput
      id="AppSearch"
      iconBefore="bold/interface-search"
      label=""
      labelPosition="top"
      placeholder="Search your apps"
    />
    <ListViewBeta
      id="Grid"
      _primaryKeys=""
      data="{{ filteredApps.value }}"
      heightType="auto"
      itemWidth="200px"
      layoutType="grid"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="Container"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="8px 8px"
        padding="12px"
        showBody={true}
        showBorder={false}
      >
        <View id="7af7d" viewKey="View 1">
          <Text
            id="ContainerTitle"
            value="**{{ item.name }}**

{{ item.description}}"
            verticalAlign="center"
          />
          <Text
            id="text5"
            hidden="{{ item.available === true }}"
            style={{ ordered: [{ color: "danger" }] }}
            value="**Coming Soon!**"
            verticalAlign="center"
          />
          <Link
            id="AppLink"
            hidden="{{ item.available === false }}"
            showUnderline="never"
            text="View"
            textSize="default"
          >
            <Event
              event="click"
              method="openPage"
              params={{
                ordered: [
                  { options: { ordered: [{ passDataWith: "urlParams" }] } },
                  { pageName: "{{ item.pageName }}" },
                ],
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Link>
        </View>
      </Container>
    </ListViewBeta>
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      retoolStorageFileId="fe651d65-7da4-4d25-91a6-fba9853933fd"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />
  </Frame>
</Screen>
