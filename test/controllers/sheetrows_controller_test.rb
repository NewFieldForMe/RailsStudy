require 'test_helper'

class SheetrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sheetrow = sheetrows(:one)
  end

  test "should get index" do
    get sheetrows_url
    assert_response :success
  end

  test "should get new" do
    get new_sheetrow_url
    assert_response :success
  end

  test "should create sheetrow" do
    assert_difference('Sheetrow.count') do
      post sheetrows_url, params: { sheetrow: { comment: @sheetrow.comment, comment_title: @sheetrow.comment_title, end_date: @sheetrow.end_date, order_num: @sheetrow.order_num, scene_type: @sheetrow.scene_type, start_date: @sheetrow.start_date } }
    end

    assert_redirected_to sheetrow_url(Sheetrow.last)
  end

  test "should show sheetrow" do
    get sheetrow_url(@sheetrow)
    assert_response :success
  end

  test "should get edit" do
    get edit_sheetrow_url(@sheetrow)
    assert_response :success
  end

  test "should update sheetrow" do
    patch sheetrow_url(@sheetrow), params: { sheetrow: { comment: @sheetrow.comment, comment_title: @sheetrow.comment_title, end_date: @sheetrow.end_date, order_num: @sheetrow.order_num, scene_type: @sheetrow.scene_type, start_date: @sheetrow.start_date } }
    assert_redirected_to sheetrow_url(@sheetrow)
  end

  test "should destroy sheetrow" do
    assert_difference('Sheetrow.count', -1) do
      delete sheetrow_url(@sheetrow)
    end

    assert_redirected_to sheetrows_url
  end
end
