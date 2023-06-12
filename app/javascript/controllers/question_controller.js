// Dans le fichier question_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["question"]

  connect() {
    this.questionTargets.forEach((questionElement) => {
      questionElement.addEventListener("click", this.handleQuestionClick)
    })
  }

  disconnect() {
    this.questionTargets.forEach((questionElement) => {
      questionElement.removeEventListener("click", this.handleQuestionClick)
    })
  }

  handleQuestionClick(event) {
    const questionElements = this.questionTargets

    questionElements.forEach((element) => {
      element.classList.remove("selected")
    })

    event.currentTarget.classList.add("selected")
  }
}
