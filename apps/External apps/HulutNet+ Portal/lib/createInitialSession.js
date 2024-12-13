if (formatDataAsArray(getSessions.data).length == 0) {
  addSession.trigger().then(() => {
    getSessions.trigger()
  })
}