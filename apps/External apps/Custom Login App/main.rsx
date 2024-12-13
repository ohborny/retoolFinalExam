<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ ordered: [] }}
    type="main"
  >
    <Image
      id="image2"
      fit="contain"
      heightType="fixed"
      retoolStorageFileId="cf09e205-f7d6-4252-b6d7-80bb5cea34bf"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
      style={{ ordered: [] }}
    />
    <Container
      id="Container"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [] }}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="1cc5e" viewKey="Login">
        <Form
          id="LoginForm"
          disabled=""
          disableSubmit="{{ LoginForm.invalid }}"
          footerPadding="4px 12px"
          footerPaddingType="normal"
          headerPadding="4px 12px"
          headerPaddingType="normal"
          margin="8px 8px"
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
            value=" ### Log in"
            verticalAlign="center"
          />
          <Button
            id="LoginWithSSOButton"
            iconBefore="bold/interface-login-key"
            marginType="normal"
            style={{
              ordered: [
                { border: "{{ theme.primary}}" },
                { label: "{{ theme.primary }}" },
              ],
            }}
            styleVariant="outline"
            text="Sign in with SSO"
          >
            <Event
              event="click"
              method="openUrl"
              params={{
                ordered: [
                  { options: { ordered: [{ newTab: false }] } },
                  {
                    url: "https://eofinaldev.enablement.retool.com/oauth2sso/login",
                  },
                ],
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Text
            id="text1"
            horizontalAlign="center"
            marginType="normal"
            style={{ ordered: [] }}
            value={'<p style="font-weight:500">OR</p>'}
            verticalAlign="center"
          />
          <Divider id="divider1" marginType="normal" textSize="default" />
          <Divider id="divider2" marginType="normal" textSize="default" />
          <Text
            id="text2"
            marginType="normal"
            style={{ ordered: [] }}
            value={
              '<p style="font-weight: 500">Enter the email and password for your account</p>'
            }
            verticalAlign="center"
          />
          <TextInput
            id="EmailInput"
            iconBefore="bold/mail-send-envelope"
            label=""
            labelPosition="top"
            marginType="normal"
            patternType="email"
            placeholder="name@company.com"
            required={true}
          />
          <PasswordInput
            id="PasswordInput"
            iconBefore="bold/computer-keyboard-asterisk-1"
            label=""
            labelPosition="top"
            marginType="normal"
            minLength="4"
            placeholder="••••••••••"
            required={true}
            showTextToggle={true}
          />
          <Button
            id="formButton1"
            marginType="normal"
            style={{ ordered: [] }}
            submit={true}
            submitTargetId="LoginForm"
            text="Sign in"
          />
          <Alert
            id="ErrorAlert"
            description="{{ login.error }}"
            hidden="{{ !login.error }}"
            title="Error"
            type="error"
          />
          <Link
            id="forgotPasswordLink"
            horizontalAlign="right"
            style={{ ordered: [{ text: "info" }] }}
            text="Forgot Password?"
          >
            <Event
              event="click"
              method="openApp"
              params={{
                ordered: [{ uuid: "c23dd286-b1c7-11ef-9854-c7f1364e40ff" }],
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Link>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="login"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
    <Text
      id="text4"
      style={{ ordered: [{ color: "info" }] }}
      value="##### Portal for planning and ordering Marketing Assets"
      verticalAlign="center"
    />
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      retoolStorageFileId="fe516663-5023-4101-9f49-4468b3ba8701"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />
  </Frame>
</App>
