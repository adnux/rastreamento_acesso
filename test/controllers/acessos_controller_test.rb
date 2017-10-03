require 'test_helper'

class AcessosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acesso = acessos(:one)
  end

  test "should get index" do
    get acessos_url, as: :json
    assert_response :success
  end

  test "should create acesso" do
    assert_difference('Acesso.count') do
      post acessos_url, params: { acesso: { date: @acesso.date, id: @acesso.id, url: @acesso.url } }, as: :json
    end

    assert_response 201
  end

  test "should show acesso" do
    get acesso_url(@acesso), as: :json
    assert_response :success
  end

  test "should update acesso" do
    patch acesso_url(@acesso), params: { acesso: { date: @acesso.date, id: @acesso.id, url: @acesso.url } }, as: :json
    assert_response 200
  end

  test "should destroy acesso" do
    assert_difference('Acesso.count', -1) do
      delete acesso_url(@acesso), as: :json
    end

    assert_response 204
  end
end
