require 'test_helper'

class VocabsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vocabs_index_url
    assert_response :success
  end

  test "should get show" do
    get vocabs_show_url
    assert_response :success
  end

  test "should get new" do
    get vocabs_new_url
    assert_response :success
  end

  test "should get create" do
    get vocabs_create_url
    assert_response :success
  end

  test "should get update" do
    get vocabs_update_url
    assert_response :success
  end

  test "should get delete" do
    get vocabs_delete_url
    assert_response :success
  end

end
