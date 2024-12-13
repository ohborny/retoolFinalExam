// Create a new thread in the db
addSession.trigger().then(() => {
  getSessions.trigger()
})

// Clear the current convo
chatMessages.setValue([])

// Focus the text input
textInput3.focus()