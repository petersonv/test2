class AssessQuestsController < ApplicationController
  before_action :set_assess_quest, only: [:show, :update, :destroy]

  # GET /assess_quests
  def index
    @assess_quests = AssessQuest.all

    render json: @assess_quests
  end

  # GET /assess_quests/1
  def show
    render json: @assess_quest
  end

  # POST /assess_quests
  def create
    @assess_quest = AssessQuest.new(assess_quest_params)

    if @assess_quest.save
      render json: @assess_quest, status: :created, location: @assess_quest
    else
      render json: @assess_quest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assess_quests/1
  def update
    if @assess_quest.update(assess_quest_params)
      render json: @assess_quest
    else
      render json: @assess_quest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assess_quests/1
  def destroy
    @assess_quest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assess_quest
      @assess_quest = AssessQuest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assess_quest_params
      params.require(:assess_quest).permit(:assessment_id, :question_id)
    end
end
