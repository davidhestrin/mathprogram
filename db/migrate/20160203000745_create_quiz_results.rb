class CreateQuizResults < ActiveRecord::Migration
  def change
    create_table :quiz_results do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :total_questions_count
      t.integer :correct_answers_count
      t.integer :time_taken_in_seconds
      t.text :incorrect_answers

      t.timestamps null: false
    end
  end
end
