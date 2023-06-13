import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { gameId: Number }
  static targets = ["user_game"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "GameChannel", id: this.gameIdValue },
      {
        received: data => {
          console.log("received", data)

          document.querySelector('.ejected')
          // if (data.type === "eject") {
          //   const userId = data.user_id
          //   const userElement = this.findUserElement(userId)
          //   if (userElement) {
          //     userElement.classList.add("ejected")
          //   }
          // }
          window.location.href = window.location.href
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
