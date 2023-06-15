import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["selectButton", "radioButton"]

  connect() {
        // Désactiver le bouton "Select" au chargement de la page
    this.selectButtonTarget.disabled = true;
    this.radioButtonTargets.forEach(function(radio) {
      if (radio.checked) {
        this.selectButtonTarget.disabled = false;
      }
    });
  }
  change() {
    this.selectButtonTarget.disabled = false;
  }
}

