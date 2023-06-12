Game.destroy_all
Qcm.destroy_all
User.destroy_all

def convert_language(language)
  if language == "html"
    return "HTML"
  elsif language == "ruby"
    return "Ruby"
  else
    return "JavaScript"
  end
end

QUESTIONS = YAML.load_file(Rails.root.join("db/data/questions.yml"))
USERS = YAML.load_file(Rails.root.join("db/data/users.yml"))

# CREATION DE 10 USERS

USERS.each do |user|
  User.create!(email: user["email"], password: user["password"], pseudo: user["pseudo"])
end

# CREATION DE 5 QUESTIONS PAR NIVEAU PAR LANGUAGE

QUESTIONS.each do |question|
  language = question[0]
  question[1].each do |question|
    question[1].each do |info|
      Qcm.create!(
        level: question[0].gsub('level_', '').to_i,
        language: convert_language(language),
        question: info["question"],
        answer_one: info["answer_one"],
        answer_two: info["answer_two"],
        answer_true: info["answer_true"]
      )
    end
  end
end

# CREATION DE 10 GAMES RANDOM

10.times do
  language = Qcm::LANGUAGES.sample
  level = Qcm::LEVELS.sample
  user = User.all.sample
  game = Game.create!(user: user, name: "#{user.pseudo}'s game", level: level.to_s, language: language, status: "started")
  # USERGAME CREATOR
  UserGame.create!(user: user, game: game, score: (0..100).to_a.sample, step: 4, avatar: UserGame::AVATAR_URL.sample)
  game.update(status: "started")
  # USERGAME JOINEUR
  UserGame.create!(user: User.all.reject{|u|u == User.first}.sample, game: game, score: (0..100).to_a.sample, step: 4, avatar: UserGame::AVATAR_URL.sample)
  # Game QCMS
  5.times do
    GameQcm.create!(game: game, qcm: Qcm.where(level: level, language: language).sample)
  end
end
