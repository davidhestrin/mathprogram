class QuizResult < ActiveRecord::Base
  belongs_to :user
  after_create :notify_about_results

  def score_is_good?
    percentage = 1.0 * self.correct_answers_count / self.total_questions_count
    percentage > 0.5
  end

  protected

  def notify_about_results
    UserMailer.test_results_email(self.user, self).deliver
  end
end
