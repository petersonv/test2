class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.string :option1
      t.string :option2
      t.string :option3

      t.timestamps
    end
  end
end
