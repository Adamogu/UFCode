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
          // Vérifier si les deux joueurs sont présents
          window.location.href = window.location.href

        }
      }
    )
    console.log(`Subscribed to the waitingroom with the id ${this.gameIdValue}.`)
  }
}
