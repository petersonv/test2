class Question < ApplicationRecord
    has_many :assess_quests
    has_many :assessments, through: :assess_quests


    #making the model render 10 random questions
    #def self.random
    #    Question.limit(11).order("RANDOM()")
    #end

end
