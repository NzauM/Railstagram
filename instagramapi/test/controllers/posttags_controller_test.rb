require "test_helper"

class PosttagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posttag = posttags(:one)
  end

  test "should get index" do
    get posttags_url, as: :json
    assert_response :success
  end

  test "should create posttag" do
    assert_difference("Posttag.count") do
      post posttags_url, params: { posttag: { post_id: @posttag.post_id, tag_id: @posttag.tag_id } }, as: :json
    end

    assert_response :created
  end

  test "should show posttag" do
    get posttag_url(@posttag), as: :json
    assert_response :success
  end

  test "should update posttag" do
    patch posttag_url(@posttag), params: { posttag: { post_id: @posttag.post_id, tag_id: @posttag.tag_id } }, as: :json
    assert_response :success
  end

  test "should destroy posttag" do
    assert_difference("Posttag.count", -1) do
      delete posttag_url(@posttag), as: :json
    end

    assert_response :no_content
  end
end
