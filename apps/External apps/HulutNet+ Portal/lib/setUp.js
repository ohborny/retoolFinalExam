// don't want to do this if we're streaming responses back.
if (!sendMessgeToGpt.isFetching) {
  let data = await getMessagesForThread.trigger()
  await chatMessages.setValue(formatDataAsArray(data))
}
