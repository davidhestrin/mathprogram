class UserMailer < ApplicationMailer
  def test_results_email(user, quiz_result)
    @user = user
    @quiz_result = quiz_result
    mail(to: @user.email, subject: "Your test results")
  end
end
