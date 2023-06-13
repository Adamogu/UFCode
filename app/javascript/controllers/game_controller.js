import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { gameId: Number }
  static targets = ["user_game", "progress", "result"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "GameChannel", id: this.gameIdValue },
      {
        received: data => {
          window.location.href = window.location.href
         const json = JSON.parse(data)
          if (json.user_joined === true) {
            window.location.href = window.location.href
          } else if (json.user_answered) {
            console.log("answer")
            this.progressTarget.outerHTML = json.user_answered
          } else if (json.user_finished) {
            console.log("finished")
            if (this.hasResultTarget) {
              this.resultTarget.outerHTML = json.user_finished
            }
          }
        }
      }
    )
    console.log(`Subscribed to the waitingroom with the id ${this.gameIdValue}.`)
  }
  // findUserElement(userId) {
  //   const userElements = this.userGameTargets
  //   for (let i = 0; i < userElements.length; i++) {
  //     const userElement = userElements[i]
  //     if (userElement.dataset.userId == userId) {
  //       return userElement
  //     }
  //   }
  //   return null
  // }
}
