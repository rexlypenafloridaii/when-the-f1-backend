require "test_helper"

class RacesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")
    @order = Order.create(user_id: @user.id, product_id: Product.first.id, quantity: 10)
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/races.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Race.count, data.length
  end

  test "show" do
    get "/races/#{@race.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "location", "date", "time"], data.keys
  end
end
