require "test_helper"

class UtentisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utenti = utentis(:one)
  end

  test "should get index" do
    get utentis_url
    assert_response :success
  end

  test "should get new" do
    get new_utenti_url
    assert_response :success
  end

  test "should create utenti" do
    assert_difference('Utenti.count') do
      post utentis_url, params: { utenti: { cognome: @utenti.cognome, email: @utenti.email, nome: @utenti.nome } }
    end

    assert_redirected_to utenti_url(Utenti.last)
  end

  test "should show utenti" do
    get utenti_url(@utenti)
    assert_response :success
  end

  test "should get edit" do
    get edit_utenti_url(@utenti)
    assert_response :success
  end

  test "should update utenti" do
    patch utenti_url(@utenti), params: { utenti: { cognome: @utenti.cognome, email: @utenti.email, nome: @utenti.nome } }
    assert_redirected_to utenti_url(@utenti)
  end

  test "should destroy utenti" do
    assert_difference('Utenti.count', -1) do
      delete utenti_url(@utenti)
    end

    assert_redirected_to utentis_url
  end
end
