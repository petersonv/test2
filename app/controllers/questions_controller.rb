class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy, :create]

  # GET /questions
  def index
    @questions = Question.order("RANDOM()").limit(1)
    #@questions = Question.order("RANDOM()").limit(10)
    render json: @questions
  end



  # GET /questions/1
  #shows random question...but not 10
  #render json: Question.find_by(id: params[:id]) ||Question.random
  def show
    render json: @question
    #@questions = Question.order("RANDOM()").limit(10)

    render json: @questions
  end













  # POST /questions
  def create
    @question = Question.new(question_params)

    if @question.save
      render json: @question, status: :created, location: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questions/1
  def update
    if @question.update(question_params)
      render json: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:question, :answer, :option1, :option2, :option3)
    end
end
