<Screen
  id="settingsPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Page page2"
  urlSlug="page2"
>
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ ordered: [] }}
    type="main"
  >
    <Text
      id="text1"
      value={'<h1 style="font-weight: 500"> Your account </h3>'}
      verticalAlign="center"
    />
    <Tabs
      id="tabs1"
      data={'{{ ["General", "Advanced"] }} '}
      value="{{ self.values[0] }}"
    />
    <Divider id="divider1" />
    <Text
      id="text2"
      value={'<h5 style="font-weight: 500"> General </h3>'}
      verticalAlign="center"
    />
    <Text
      id="text3"
      value="View your account details below. <a> Learn more</a>"
      verticalAlign="center"
    />
    <Include src="./container1.rsx" />
  </Frame>
</Screen>
