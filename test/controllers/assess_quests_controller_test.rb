require "test_helper"

class AssessQuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assess_quest = assess_quests(:one)
  end

  test "should get index" do
    get assess_quests_url, as: :json
    assert_response :success
  end

  test "should create assess_quest" do
    assert_difference('AssessQuest.count') do
      post assess_quests_url, params: { assess_quest: { assessment_id: @assess_quest.assessment_id, question_id: @assess_quest.question_id } }, as: :json
    end

    assert_response 201
  end

  test "should show assess_quest" do
    get assess_quest_url(@assess_quest), as: :json
    assert_response :success
  end

  test "should update assess_quest" do
    patch assess_quest_url(@assess_quest), params: { assess_quest: { assessment_id: @assess_quest.assessment_id, question_id: @assess_quest.question_id } }, as: :json
    assert_response 200
  end

  test "should destroy assess_quest" do
    assert_difference('AssessQuest.count', -1) do
      delete assess_quest_url(@assess_quest), as: :json
    end

    assert_response 204
  end
end
