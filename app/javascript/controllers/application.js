import { Application } from "@hotwired/stimulus"
// import QuestionController from "./question_controller"

const application = Application.start()
// application.register("question", QuestionController)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
