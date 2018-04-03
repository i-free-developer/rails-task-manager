require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get tasks_all_url
    assert_response :success
  end

  test "should get find" do
    get tasks_find_url
    assert_response :success
  end

  test "should get add" do
    get tasks_add_url
    assert_response :success
  end

  test "should get edit" do
    get tasks_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get tasks_destroy_url
    assert_response :success
  end

end
