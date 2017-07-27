require 'test_helper'

class ShortnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shortner = shortners(:one)
  end

  test "should get index" do
    get shortners_url
    assert_response :success
  end

  test "should get new" do
    get new_shortner_url
    assert_response :success
  end

  test "should create shortner" do
    assert_difference('Shortner.count') do
      post shortners_url, params: { shortner: { url: @shortner.url } }
    end

    assert_redirected_to shortner_url(Shortner.last)
  end

  test "should show shortner" do
    get shortner_url(@shortner)
    assert_response :success
  end

  test "should get edit" do
    get edit_shortner_url(@shortner)
    assert_response :success
  end

  test "should update shortner" do
    patch shortner_url(@shortner), params: { shortner: { url: @shortner.url } }
    assert_redirected_to shortner_url(@shortner)
  end

  test "should destroy shortner" do
    assert_difference('Shortner.count', -1) do
      delete shortner_url(@shortner)
    end

    assert_redirected_to shortners_url
  end
end
