Game.destroy_all
Qcm.destroy_all
User.destroy_all

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
    Qcm.create!(
      level: question[0].gsub('level_', '').to_i,
      language: language,
      question: question[1]["question"]["name"],
      answer_one: question[1]["question"]["answer_one"],
      answer_two: question[1]["question"]["answer_two"],
      answer_true: question[1]["question"]["answer_true"]
    )
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
  # USERGAME JOINEUR
  UserGame.create!(user: User.all.reject{|u|u == User.first}.sample, game: game, score: (0..100).to_a.sample, step: 4, avatar: UserGame::AVATAR_URL.sample)
  # Game QCMS
  5.times do
    GameQcm.create!(game: game, qcm: Qcm.where(level: level, language: language).sample)
  end
end