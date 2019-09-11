require 'test_helper'

class SuperVillainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_villain = super_villains(:one)
  end

  test "should get index" do
    get super_villains_url
    assert_response :success
  end

  test "should get new" do
    get new_super_villain_url
    assert_response :success
  end

  test "should create super_villain" do
    assert_difference('SuperVillain.count') do
      post super_villains_url, params: { super_villain: { description: @super_villain.description, name: @super_villain.name } }
    end

    assert_redirected_to super_villain_url(SuperVillain.last)
  end

  test "should show super_villain" do
    get super_villain_url(@super_villain)
    assert_response :success
  end

  test "should get edit" do
    get edit_super_villain_url(@super_villain)
    assert_response :success
  end

  test "should update super_villain" do
    patch super_villain_url(@super_villain), params: { super_villain: { description: @super_villain.description, name: @super_villain.name } }
    assert_redirected_to super_villain_url(@super_villain)
  end

  test "should destroy super_villain" do
    assert_difference('SuperVillain.count', -1) do
      delete super_villain_url(@super_villain)
    end

    assert_redirected_to super_villains_url
  end
end
