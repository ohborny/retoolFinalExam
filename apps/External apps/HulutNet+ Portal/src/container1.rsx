<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="aea63" viewKey="View 1">
    <TextInput
      id="textInput1"
      iconBefore="bold/interface-user-square"
      label="Name"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ current_user.fullName}}"
    />
    <TextInput
      id="textInput2"
      iconBefore="bold/mail-send-envelope"
      label="Email"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ current_user.email}}"
    />
    <PasswordInput
      id="password1"
      iconBefore="bold/interface-lock-shield"
      label="Password"
      labelPosition="top"
      placeholder="••••••••••"
      showTextToggle={true}
    />
    <Select
      id="select1"
      emptyMessage="No options"
      itemMode="static"
      label="Department"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="Sales"
    >
      <Option id="a526d" value="Sales" />
      <Option id="2b24e" value="Marketing" />
      <Option id="ae11f" disabled={false} hidden={false} value="Engineering" />
      <Option id="ea604" disabled={false} hidden={false} value="Option 4" />
    </Select>
    <Text id="text6" value="**Roles**" verticalAlign="center" />
    <TagsWidget2
      id="tags1"
      allowWrap={true}
      data="{{current_user.groups.map(item => item.name)}}"
    />
    <Text
      id="text4"
      style={{ ordered: [{ color: "rgba(122, 131, 136, 0.52)" }] }}
      value="For security reasons, you cannot reset your password without verifying your email"
      verticalAlign="center"
    />
    <Link id="link15" text="Reset password" textSize="default">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendResetPasswordLink"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
  </View>
</Container>
