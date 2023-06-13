import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="swap"
export default class extends Controller {
  static targets = ["question"];

  swap(event) {
    const result = event.currentTarget.dataset.correct;
    const user_game = this.element.dataset.userGame

    console.log(`/user_games/${user_game}/answer?result=${result}`)

    fetch(`/user_games/${user_game}/answer?result=${result}`, {
      method: "GET",
      headers: { "Accept": "application/json" }
    })
    .then(response => response.json())
    .then((data) => {
      this.element.innerHTML = data.html;

    })
  }
}
