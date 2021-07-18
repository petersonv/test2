class CreateAssessQuests < ActiveRecord::Migration[6.1]
  def change
    create_table :assess_quests do |t|
      t.integer :assessment_id
      t.integer :question_id

      t.timestamps
    end
  end
end
