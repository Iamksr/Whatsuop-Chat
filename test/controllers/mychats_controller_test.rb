require 'test_helper'

class MychatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mychat = mychats(:one)
  end

  test "should get index" do
    get mychats_url
    assert_response :success
  end

  test "should get new" do
    get new_mychat_url
    assert_response :success
  end

  test "should create mychat" do
    assert_difference('Mychat.count') do
      post mychats_url, params: { mychat: { message: @mychat.message, username: @mychat.username } }
    end

    assert_redirected_to mychat_url(Mychat.last)
  end

  test "should show mychat" do
    get mychat_url(@mychat)
    assert_response :success
  end

  test "should get edit" do
    get edit_mychat_url(@mychat)
    assert_response :success
  end

  test "should update mychat" do
    patch mychat_url(@mychat), params: { mychat: { message: @mychat.message, username: @mychat.username } }
    assert_redirected_to mychat_url(@mychat)
  end

  test "should destroy mychat" do
    assert_difference('Mychat.count', -1) do
      delete mychat_url(@mychat)
    end

    assert_redirected_to mychats_url
  end
end
