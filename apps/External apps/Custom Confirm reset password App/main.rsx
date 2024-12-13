<App>
  <Include src="./functions.rsx" />
  <DocumentTitle id="$customDocumentTitle" value="" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="0"
    paddingType="none"
    sticky={null}
    style={{ ordered: [] }}
    type="main"
  >
    <Button
      id="button1"
      iconBefore="bold/interface-arrows-left"
      style={{ ordered: [{ background: "rgba(0, 0, 0, 0)" }] }}
    >
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "d80aec5a-b1bf-11ef-a4b0-c3f28c725c9d" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="Container"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="aa39c" viewKey="View 1">
        <Form
          id="Form"
          disabled=""
          disableSubmit="{{ Form.invalid }}"
          footerPadding="4px 12px"
          footerPaddingType="normal"
          headerPadding="4px 12px"
          headerPaddingType="normal"
          margin="8px"
          marginType="none"
          padding="48px 24px"
          paddingType="none"
          requireValidation={true}
          showBody={true}
          showBorder={false}
          style={{ ordered: [] }}
        >
          <Text
            id="FormTitle"
            marginType="normal"
            style={{ ordered: [] }}
            value=" ### Finish resetting your password"
            verticalAlign="center"
          />
          <TextInput
            id="EmailInput"
            disabled="true"
            label="Email"
            labelPosition="top"
            marginType="normal"
            patternType="email"
            placeholder="name@company.com"
            required={true}
            value="{{ urlparams.email }}"
          />
          <PasswordInput
            id="Password"
            hideLabel={false}
            hideValidationMessage={true}
            label="New password"
            labelPosition="top"
            placeholder="••••••••••"
            required={true}
            showTextToggle={true}
            style={{ ordered: [] }}
          />
          <PasswordInput
            id="ConfirmPassword"
            customValidation="{{ self.value !== Password.value ? 'Passwords must match' : '' }}"
            label="Confirm new password"
            labelPosition="top"
            placeholder="••••••••••"
            required={true}
            showTextToggle={true}
          />
          <Button
            id="SubmitButton"
            marginType="normal"
            style={{ ordered: [] }}
            submit={true}
            submitTargetId="Form"
            text="Reset password"
          />
          <Alert
            id="ErrorAlert"
            description="{{ resetPassword.error }}"
            hidden="{{ !resetPassword.error }}"
            title="Error"
            type="error"
          />
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="resetPassword"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
  </Frame>
</App>
