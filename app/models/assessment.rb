class Assessment < ApplicationRecord
    has_many :assess_quests
    has_many :questions, through: :assess_quests
end
