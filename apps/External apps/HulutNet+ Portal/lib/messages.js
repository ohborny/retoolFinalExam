const fromDb = {{ formatDataAsArray(getMessages.data) }}
const ticket = {{ selectedThread.value }}


const constructedMessage = {
  message_text: ticket.text
}

return [constructedMessage].concat(fromDb)