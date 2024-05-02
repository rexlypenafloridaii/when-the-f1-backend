require "test_helper"

class RacesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/races.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Race.count, data.length
  end

  test "show" do
    get "/races/#{Race.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "location", "date", "time"], data.keys
  end
end
