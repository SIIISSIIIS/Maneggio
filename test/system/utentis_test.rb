require "application_system_test_case"

class UtentisTest < ApplicationSystemTestCase
  setup do
    @utenti = utentis(:one)
  end

  test "visiting the index" do
    visit utentis_url
    assert_selector "h1", text: "Utentis"
  end

  test "creating a Utenti" do
    visit utentis_url
    click_on "New Utenti"

    fill_in "Annotazioni", with: @utenti.annotazioni
    fill_in "Cognome", with: @utenti.cognome
    fill_in "Email", with: @utenti.email
    fill_in "Nome", with: @utenti.nome
    fill_in "Numero", with: @utenti.numero
    click_on "Create Utenti"

    assert_text "Utenti was successfully created"
    click_on "Back"
  end

  test "updating a Utenti" do
    visit utentis_url
    click_on "Edit", match: :first

    fill_in "Annotazioni", with: @utenti.annotazioni
    fill_in "Cognome", with: @utenti.cognome
    fill_in "Email", with: @utenti.email
    fill_in "Nome", with: @utenti.nome
    fill_in "Numero", with: @utenti.numero
    click_on "Update Utenti"

    assert_text "Utenti was successfully updated"
    click_on "Back"
  end

  test "destroying a Utenti" do
    visit utentis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utenti was successfully destroyed"
  end
end
