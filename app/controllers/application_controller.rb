class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ask_newton
  	reaction = NEWTONBOT.get_reaction(params[:query])
    render json: { response: reaction.present? ? reaction : "I'm sorry, I don't understand that :(" }
  end
end
