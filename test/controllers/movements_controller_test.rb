require 'test_helper'

class MovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movement = movements(:one)
  end

  test "should get index" do
    get movements_url, as: :json
    assert_response :success
  end

  test "should create movement" do
    assert_difference('Movement.count') do
      post movements_url, params: { movement: { ammount: @movement.ammount, client_id: @movement.client_id, name: @movement.name } }, as: :json
    end

    assert_response 201
  end

  test "should show movement" do
    get movement_url(@movement), as: :json
    assert_response :success
  end

  test "should update movement" do
    patch movement_url(@movement), params: { movement: { ammount: @movement.ammount, client_id: @movement.client_id, name: @movement.name } }, as: :json
    assert_response 200
  end

  test "should destroy movement" do
    assert_difference('Movement.count', -1) do
      delete movement_url(@movement), as: :json
    end

    assert_response 204
  end
end
