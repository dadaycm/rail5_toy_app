require 'test_helper'

class ToysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toy = toys(:goose)
  end

  test "should get index" do
    p '1 index:'
    p "[toys_url]=#{toys_url}"
    p "[toys_path]=#{toys_path}"
    get toys_url
    assert_response :success
  end

  test "should get new" do
    p '2 new:'
    p "[new_toy_url]=#{new_toy_url}"
    p "[new_toy_path]=#{new_toy_path}"
    get new_toy_url
    assert_response :success
  end

  test "should create toy" do
    p '3 create: post'
    p "[toys_url]=#{toys_url}"
    p "[toys_path]=#{toys_path}"
    assert_difference('Toy.count') do
      post toys_url, params: { toy: { favorite: @toy.favorite, name: @toy.name, weight: @toy.weight } }
    end

    assert_redirected_to toy_url(Toy.last)
  end

  test "should show toy" do
    p "4 show toy:"
    p "[toy_url(@toy)]=#{toy_url(@toy)}"
    p "[toy_path(@toy)]=#{toy_path(@toy)}"
    get toy_url(@toy)
    assert_response :success
  end

  test "should get edit" do
    p "5 edit:"
    p "[edit_toy_url(@toy)]=#{edit_toy_url(@toy)}"
    p "[edit_toy_path(@toy)]=#{edit_toy_path(@toy)}"
    get edit_toy_url(@toy)
    assert_response :success
  end

  test "should update toy" do
    p '6 update: patch'
    p "[toy_url(@toy)]=#{toy_url(@toy)}"
    p "[toy_path(@toy)]=#{toy_path(@toy)}"
    patch toy_url(@toy), params: { toy: { favorite: @toy.favorite, name: @toy.name, weight: @toy.weight } }
    assert_redirected_to toy_url(@toy)
  end

  test "should destroy toy" do
    p '7 destroy: delete'
    p "[toy_url(@toy)]=#{toy_url(@toy)}"
    p "[toy_path(@toy)]=#{toy_path(@toy)}"
    assert_difference('Toy.count', -1) do
      delete toy_url(@toy)
    end

    assert_redirected_to toys_url
  end
end
