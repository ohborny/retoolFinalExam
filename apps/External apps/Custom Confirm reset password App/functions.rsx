<GlobalFunctions>
  <RetoolUserActionQuery
    id="resetPassword"
    actionType="confirm_reset_password"
    email="{{ EmailInput.value }}"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    metadata={null}
    newPassword="{{ Password.value }}"
    newPasswordConfirm="{{ ConfirmPassword.value }}"
    queryFailureConditions={
      '[{"condition":"{{ error }}","message":"Error resetting password."}]'
    }
    resourceName="RetoolUserAction"
    resourceTypeOverride=""
    showFailureToaster={false}
    showSuccessToaster={false}
    successMessage="Success! Check your email for the reset password link."
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="login"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
  <RetoolUserActionQuery
    id="login"
    email="{{ urlparams.email }}"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    metadata={null}
    newPasswordConfirm=""
    notificationDuration={4.5}
    password="{{ Password.value }}"
    queryFailureConditions={
      '[{"condition":"{{ error }}","message":"Error logging in."}]'
    }
    resourceName="RetoolUserAction"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="openUrl"
      params={{
        ordered: [
          { url: "/" },
          { options: { ordered: [{ newTab: false }, { forceReload: true }] } },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
</GlobalFunctions>
