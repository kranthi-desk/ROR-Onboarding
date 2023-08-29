require "test_helper"

class Api::AuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_authors_index_url
    assert_response :success
  end

  test "should get high_rank" do
    get api_authors_high_rank_url
    assert_response :success
  end

  test "should get show" do
    get api_authors_show_url
    assert_response :success
  end

  test "should get show_premium" do
    get api_authors_show_premium_url
    assert_response :success
  end
end
