import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="timer"
export default class extends Controller {
  connect() {
    // console.log('hello')
    this.temps = 0
    var gameStartAudio = document.getElementById('game-start-audio');
    // console.log(gameStartAudio)
    gameStartAudio.play();
    this.timerElement = document.getElementById("timer")

    setInterval(this.getData, 1000)
  }

  getData = () => {
    let minutes = parseInt(this.temps / 60, 10)
    let secondes = parseInt(this.temps % 60, 10)

    minutes = minutes < 10 ? "0" + minutes : minutes
    secondes = secondes < 10 ? "0" + secondes : secondes
    if (this.timerElement) {
      // console.log(this.timerElement)
      this.timerElement.innerText = `${minutes}:${secondes}`
      this.temps = this.temps + 1
      // console.log(this.temps)
      // Vérifier si toutes les questions ont été répondues
      const answeredQuestions = document.querySelectorAll("[data-action='click->swap#swap'].answered")
      const totalQuestions = document.querySelectorAll("[data-action='click->swap#swap']").length

      if (answeredQuestions.length === totalQuestions) {
        this.timerElement.style.display = "none" // Masquer le timer
      }
    }
  }
}
