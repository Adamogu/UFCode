# seeds.rb
# if Rails.env.development?

Game.destroy_all
Qcm.destroy_all
User.destroy_all

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
Qcm.create(
  question: "Qu'est-ce que HTML signifie ?",
  answer_one: "HyperLink and Text Markup Language",
  answer_two: "Highly Technical Markup Language",
  answer_true: "HyperText Markup Language",
  language: "HTML",
  level: 1
)

Qcm.create(
  question: "Quelle balise est utilisée pour créer un lien hypertexte ?",
  answer_one: "<link>",
  answer_two: "<href>",
  answer_true: "<a>",
  language: "HTML",
  level: 1
)

# Niveau 1 - Ruby
Qcm.create(
  question: "Quel mot-clé est utilisé pour définir une méthode en Ruby ?",
  answer_one: "function",
  answer_two: "method",
  answer_true: "def",
  language: "Ruby",
  level: 1
)

Qcm.create(
  question: "Quel est le symbole utilisé pour ajouter des éléments à un tableau en Ruby ?",
  answer_one: "+=",
  answer_two: ">>",
  answer_true: "<<",
  language: "Ruby",
  level: 1
)


# Niveau 2 - HTML

Qcm.create(
  question: "Quelle balise est utilisée pour créer un tableau en HTML ?",
  answer_one: "<tab>",
  answer_two: "<grid>",
  answer_true: "<table>",
  language: "HTML",
  level: 2
)

Qcm.create(
  question: "Quelle est la différence entre les balises <div> et <span> en HTML ?",
  answer_one: "Aucune, ce sont des balises équivalentes.",
  answer_two: "La balise <div> est utilisée pour les conteneurs de blocs, tandis que la balise <span> est utilisée pour les conteneurs de lignes.",
  answer_true: "La balise <div> est utilisée pour les conteneurs de blocs, tandis que la balise <span> est utilisée pour les conteneurs de texte en ligne.",
  language: "HTML",
  level: 2
)


# # Niveau 2 - Ruby

Qcm.create(
  question: "Quelle est la méthode utilisée pour ajouter un élément à la fin d'un tableau en Ruby ?",
  answer_one: "add",
  answer_two: "append",
  answer_true: "push",
  language: "Ruby",
  level: 2
)

Qcm.create(
  question: "Quelle est la méthode utilisée pour inverser l'ordre des éléments dans un tableau en Ruby ?",
  answer_one: "flip",
  answer_two: "invert",
  answer_true: "reverse",
  language: "Ruby",
  level: 2
)


# # Niveau 3 - HTML

Qcm.create(
  question: "Quelle est la différence entre les balises <article> et <section> en HTML ?",
  answer_one: "<article> est utilisé pour représenter un contenu dépendant et distribuable, tandis que <section> est utilisé pour séparer des contenus thématiques.",
  answer_two: "<article> est utilisé pour les articles de blog, tandis que <section> est utilisé pour les sections génériques.",
  answer_true: "<article> est utilisé pour le contenu réutilisable et indépendant, tandis que <section> est utilisé pour les sections thématiques de contenu.",
  language: "HTML",
  level: 3
)

Qcm.create(
  question: "Quelle balise HTML est utilisée pour représenter une définition de terme ?",
  answer_one: "<dft>",
  answer_two: "<dof>",
  answer_true: "<dfn>",
  language: "HTML",
  level: 3
)

# # Niveau 3 - Ruby

Qcm.create(
  question: "Quelle méthode permet de convertir une chaîne de caractères en un tableau de caractères individuels en Ruby ?",
  answer_one: "split",
  answer_two: "chars",
  answer_true: "each_char",
  language: "Ruby",
  level: 3
)

Qcm.create(
  question: "Quelle est la différence entre 'include?' et 'member?' en Ruby ?",
  answer_one: "include? = présence dans une collection, member? = présence dans un module.",
  answer_two: "include? = membre d'un module, member? = présence dans une collection.",
  answer_true: "include? = collection, member? = alias d'include?",
  language: "Ruby",
  level: 3
)
