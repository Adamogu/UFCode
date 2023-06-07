class GameQcmsController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @game.update(level: params[:qcm][:level])

    @questions = Qcm.where(level: @game.level.to_i, language: @game.language.slice(0..-5))
    @questions.each do |question|
      GameQcm.create(game: @game, qcm: question)
    end
    redirect_to game_path(@game)
  end
end
