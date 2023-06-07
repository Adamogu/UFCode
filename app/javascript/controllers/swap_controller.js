import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["question", "answerOne", "answerTwo", "answerTrue"]

  connect() {
    this.questionTargets.forEach((questionTarget) => {
      questionTarget.addEventListener("click", this.handleQuestionClick.bind(this))
    })
  }

  handleQuestionClick(event) {
    const questionElement = event.currentTarget
    const answerOneElement = questionElement.querySelector(".answer-one")
    const answerTwoElement = questionElement.querySelector(".answer-two")
    const answerTrueElement = questionElement.querySelector(".answer-true")

    // Exemple de manipulation des éléments en fonction de l'événement de clic
    answerOneElement.style.display = "none"
    answerTwoElement.style.display = "none"
    answerTrueElement.style.display = "block"
  }
}