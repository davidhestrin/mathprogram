class QuizResultsController < ApplicationController
  def create
    QuizResult.create!(quiz_result_params)
    redirect_to root_path, notice: "Your quiz results are sent"
  end

  protected

  def quiz_result_params
    params.require(:quiz_result).permit!.merge(user: current_user)
  end
end
