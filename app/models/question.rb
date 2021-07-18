class Question < ApplicationRecord
    has_many :assess_quests
    has_many :assessments, through: :assess_quests
end
