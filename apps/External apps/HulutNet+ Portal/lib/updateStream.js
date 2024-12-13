const data = sendMessgeToGpt.data;
const messages = chatMessages.value

messages[messages.length-1].prompt_response = data
chatMessages.setIn([messages.length-1, 'prompt_response'], data)
chatListView.scrollToIndex(chatMessages.value.length - 1)

if (!sendMessgeToGpt.isFetching) {
  clearInterval(streamTimeoutId.value)
}