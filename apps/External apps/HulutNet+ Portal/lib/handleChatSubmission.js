const generateMessageObject = (message, prompt) => {
  const session_id = listbox1.value
  const from = prompt ? current_user.email : 'AI'
  const created_at = new Date()
  const is_prompt = prompt
  const prompt_response = message

  return {
    session_id, 
    from, 
    created_at, 
    is_prompt, 
    prompt_response
  }
}

const addMessageToChatList = (messageObject, replaceLastMessage) => {
  // Add message to chat list
  const currentMessages = chatMessages.value

  if (replaceLastMessage) {
    currentMessages[currentMessages.length - 1] = messageObject
    chatMessages.setValue(currentMessages)
  } else {
    currentMessages.push(messageObject)  
  }

  chatMessages.setValue(currentMessages)

  // Scroll to new message
  chatListView.scrollToIndex(chatMessages.value.length - 1)
}

// Get message
const message = textInput3.value;
if (!message) return
const messageObject = generateMessageObject(message, true)

// Clear input
textInput3.clearValue()

// Add message to DB
addMessageToDb.trigger({
  additionalScope: {
    messageObject: messageObject
  }
})

addMessageToChatList(messageObject, false)

// Clear the previous response
sendMessgeToGpt.reset()

let formattedMessages = '';
chatMessages.value.forEach(message => {
  formattedMessages += message.from + ': ' + message.prompt_response + ' '
})

sendMessgeToGpt.trigger({
  additionalScope: {
    messages: {
        lastMessages: formattedMessages,
        currentMessage: message
    }
  }
}).then(gptResponse => {
  // Construct message object
  const gptResponseMessage = generateMessageObject(gptResponse, false)
  // Add message to chat list
  addMessageToChatList(gptResponseMessage, true)
  
  // Add message object to db
  addMessageToDb.trigger({
    additionalScope: {
      messageObject: gptResponseMessage
    }
  })
})

// Add message to chat after slight delay
setTimeout(() => {
  addMessageToChatList(generateMessageObject('', false))  
}, 600)


// Update as the GPT query streams in
if (streamTimeoutId.value) {
  clearInterval(streamTimeoutId.value)
}

const interval = setInterval(() => {
  updateStream.trigger()
},100)

streamTimeoutId.setValue(interval)

// Maybe update thread name
if (listbox1.selectedLabel == 'New thread') {
  generateThreadName.trigger({
    additionalScope: {
      messages: chatMessages.value[0].prompt_response
    }
  })
}

