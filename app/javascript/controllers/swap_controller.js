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


// import { Controller } from "hotwired/stimulus"

// export default class extends Controller {
//   static targets = ["question", "answerOne", "answerTwo", "answerTrue"] //"score" ?

//   connect() {
//     this.questionTargets.forEach((questionTarget) => {
//       questionTarget.addEventListener("click", this.handleQuestionClick.bind(this))
//     })
//   }

//   handleQuestionClick(event) {
//     const questionElement = event.currentTarget
//     const answerOneElement = questionElement.querySelector(".answer-one")
//     const answerTwoElement = questionElement.querySelector(".answer-two")
//     const answerTrueElement = questionElement.querySelector(".answer-true")

//     // Exemple de manipulation des éléments en fonction de l'événement de clic
//     answerOneElement.style.display = "none"
//     answerTwoElement.style.display = "none"
//     answerTrueElement.style.display = "block"

//     const correct = questionElement.dataset.correct === "true"

//     if (correct) {
//       const scoreElement = this.scoreTarget
//       const currentScore = parseInt(scoreElement.innerText, 10)
//       const newScore = currentScore + 1
//       scoreElement.innerText = newScore.toString()
//     }
//   }
// }
