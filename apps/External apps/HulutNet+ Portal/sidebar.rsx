<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  width="large"
>
  <Body>
    <Navigation
      id="Navigation"
      itemMode="static"
      orientation="vertical"
      retoolFileObject={{ ordered: [] }}
    >
      <Option
        id="f35db"
        highlight="true"
        icon="bold/interface-home-3"
        iconPosition="left"
        itemType="page"
        label="Home"
        screenTargetId="landingPage"
      />
      <Option
        id="d753a"
        icon="bold/entertainment-play-list-1"
        iconPosition="left"
        itemType="page"
        key="cbb02"
        label="Assets"
        screenTargetId="assetPage"
      />
      <Option
        id="91517"
        appTarget="7a1ae8a6-b251-11ef-98bd-3bc911087852"
        disabled={false}
        hidden={false}
        icon="bold/entertainment-play-list-8-alternate"
        iconPosition="left"
        itemType="page"
        label="Manage Assets"
        parentKey="cbb02"
        screenTargetId="manageAssetsPage"
      />
      <Option
        id="9d100"
        disabled={false}
        hidden={false}
        icon="bold/money-graph-bar"
        iconPosition="left"
        itemType="page"
        label="Metrics"
        parentKey="cbb02"
        screenTargetId="assetMetricsPage"
      />
      <Option
        id="2c612"
        disabled={false}
        hidden={false}
        icon="bold/computer-robot"
        iconPosition="left"
        itemType="page"
        label="Chat Assist"
        screenTargetId="chatAssistPage"
      />
      <Option
        id="3f794"
        appTarget="3dbb4134-b257-11ef-9f18-7b329612c4f0"
        icon="bold/interface-setting-cog"
        iconPosition="left"
        itemType="page"
        label="Settings
"
        screenTargetId="settingsPage"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="Avatar"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
