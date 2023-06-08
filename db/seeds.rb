# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# seeds.rb
# if Rails.env.development?
Game.destroy_all
Qcm.destroy_all
User.destroy_all
# Games.destroy_all

user1 = User.create!(
  email: 'guillaume.bregaint1@gmail.com',
  password: '123456'
)

user2 = User.create!(
  email: 'adamollivier96@gmail.com',
  password: '123456'
)

user3 = User.create!(
  email: 'stanislas.zablocki@gmail.com',
  password: '123456'
)

# Niveau 1 - HTML
Qcm.create(question: "Qu'est-ce que HTML signifie ?",
                        answer_one: "HyperLink and Text Markup Language",
                        answer_two: "Highly Technical Markup Language",
                        answer_true: "HyperText Markup Language",
                        language: "HTML",
                        level: 1)

Qcm.create(question: "Quelle balise est utilisée pour créer un lien hypertexte ?",
                        answer_one: "<link>",
                        answer_two: "<href>",
                        answer_true: "<a>",
                        language: "HTML",
                        level: 1)

# Niveau 1 - Ruby
Qcm.create(question: "Quel mot-clé est utilisé pour définir une méthode en Ruby ?",
                        answer_one: "function",
                        answer_two: "method",
                        answer_true: "def",
                        language: "Ruby",
                        level: 1)
Qcm.create(question: "Quel est le symbole utilisé pour ajouter des éléments à un tableau en Ruby ?",
                        answer_one: "+=",
                        answer_two: ">>",
                        answer_true: "<<",
                        language: "Ruby",
                        level: 1)

# # Niveau 2 - HTML
# qcm_html_2 = Qcm.create(title: "Niveau 2 - HTML")

# Question.create(qcm: qcm_html_2, text: "Quelle balise est utilisée pour créer un lien hypertexte en HTML ?", level: 2)
# Answer.create(question: qcm_html_2.questions.first, text: "<a>", correct: true)
# Answer.create(question: qcm_html_2.questions.first, text: "<link>")
# Answer.create(question: qcm_html_2.questions.first, text: "<href>")

# Question.create(qcm: qcm_html_2, text: "Quelle balise est utilisée pour créer un tableau en HTML ?", level: 2)
# Answer.create(question: qcm_html_2.questions.second, text: "<table>", correct: true)
# Answer.create(question: qcm_html_2.questions.second, text: "<tab>")
# Answer.create(question: qcm_html_2.questions.second, text: "<grid>")

# # Niveau 2 - Ruby
# qcm_ruby_2 = Qcm.create(title: "Niveau 2 - Ruby")

# Question.create(qcm: qcm_ruby_2, text: "Quelle est la méthode utilisée pour ajouter un élément à la fin d'un tableau en Ruby ?", level: 2)
# Answer.create(question: qcm_ruby_2.questions.first, text: "push", correct: true)
# Answer.create(question: qcm_ruby_2.questions.first, text: "add")
# Answer.create(question: qcm_ruby_2.questions.first, text: "append")

# Question.create(qcm: qcm_ruby_2, text: "Quelle est la méthode utilisée pour inverser l'ordre des éléments dans un tableau en Ruby ?", level: 2)
# Answer.create(question: qcm_ruby_2.questions.second, text: "reverse", correct: true)
# Answer.create(question: qcm_ruby_2.questions.second, text: "invert")
# Answer.create(question: qcm_ruby_2.questions.second, text: "flip")

# # Niveau 3 - HTML
# qcm_html_3 = Qcm.create(title: "Niveau 3 - HTML")

# Question.create(qcm: qcm_html_3, text: "Quelle balise est utilisée pour afficher une image en HTML ?", level: 3)
# Answer.create(question: qcm_html_3.questions.first, text: "<img>", correct: true)
# Answer.create(question: qcm_html_3.questions.first, text: "<image>")
# Answer.create(question: qcm_html_3.questions.first, text: "<picture>")

# Question.create(qcm: qcm_html_3, text: "Quelle balise est utilisée pour définir une liste non ordonnée en HTML ?", level: 3)
# Answer.create(question: qcm_html_3.questions.second, text: "<ul>", correct: true)
# Answer.create(question: qcm_html_3.questions.second, text: "<ol>")
# Answer.create(question: qcm_html_3.questions.second, text: "<li>")

# # Niveau 3 - Ruby
# qcm_ruby_3 = Qcm.create(title: "Niveau 3 - Ruby")

# Question.create(qcm: qcm_ruby_3, text: "Quelle est la méthode utilisée pour trier les éléments d'un tableau en Ruby ?", level: 3)
# Answer.create(question: qcm_ruby_3.questions.first, text: "sort", correct: true)
# Answer.create(question: qcm_ruby_3.questions.first, text: "order")
# Answer.create(question: qcm_ruby_3.questions.first, text: "arrange")

# Question.create(qcm: qcm_ruby_3, text: "Quelle est la méthode utilisée pour convertir une chaîne de caractères en entier en Ruby ?", level: 3)
# Answer.create(question: qcm_ruby_3.questions.second, text: "to_i", correct: true)
# Answer.create(question: qcm_ruby_3.questions.second, text: "convert_to_integer")
# Answer.create(question: qcm_ruby_3.questions.second, text: "parse_int")
# end
