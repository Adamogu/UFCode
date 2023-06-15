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



{/* <script>
  document.addEventListener("DOMContentLoaded", function() {
    const levelRadios = document.querySelectorAll('input[name="qcm[level]"]');
    const selectButton = document.querySelector('.create-button');

    // Désactiver le bouton "Select" au chargement de la page
    selectButton.disabled = true;

    // Vérifier si un niveau est déjà sélectionné au chargement de la page
    levelRadios.forEach(function(radio) {
      if (radio.checked) {
        selectButton.disabled = false;
      }
    });

    // Ajouter un écouteur d'événement à chaque bouton radio de niveau
    levelRadios.forEach(function(radio) {
      radio.addEventListener('change', function() {
        // Vérifier si un niveau est sélectionné
        const selectedLevel = document.querySelector('input[name="qcm[level]"]:checked');
        if (selectedLevel) {
          // Activer le bouton "Select" si un niveau est sélectionné
          selectButton.disabled = false;
        } else {
          // Désactiver le bouton "Select" si aucun niveau n'est sélectionné
          selectButton.disabled = true;
        }
      });
    });
  });
</script> */}
