import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="question"
export default class extends Controller {
  static targets = ["title", "question"]

  connect() {
    setTimeout(() => {
      this.titleTarget.classList.add('show');
    }, 300);

    this.questionTargets.forEach((question, index) => {
      setTimeout(() => {
        question.classList.add('show');
      }, (index + 1) * 300);
    });
  }
}

